import 'package:amazon_payfort/amazon_payfort.dart';
import 'package:amazon_payfort/src/helpers/local_platform.dart';
import 'package:flutter/services.dart';

import 'amazon_payfort_platform_interface.dart';

/// An implementation of [AmazonPayfortPlatform] that uses method channels.
class MethodChannelAmazonPayfort extends AmazonPayfortPlatform {
  /// The method channel used to interact with the native platform.
  final MethodChannel _methodChannel =
      const MethodChannel('vvvirani/amazon_payfort')
        ..setMethodCallHandler(_nativeCallHandler);

  final LocalPlatform _platform = LocalPlatform.instance;

  static PayFortResultCallback? _payFortResultCallback;

  static ApplePayResultCallback? _applePayResultCallback;

  @override
  Future<bool> initialize(PayFortOptions options) async {
    Map<String, dynamic> arguments = _platform.isAndroid
        ? options.payFortAndroidOptions()
        : options.payFortIosOptions();
    return (await _methodChannel.invokeMethod<bool?>(
            'initialize', arguments)) ??
        false;
  }

  @override
  Future<String?> getDeviceId() {
    String method = _platform.isIOS ? 'getUDID' : 'getDeviceId';
    return _methodChannel.invokeMethod<String?>(method);
  }

  @override
  Future<String?> generateSignature({
    required String shaType,
    required String concatenatedString,
  }) {
    return _methodChannel.invokeMethod<String?>(
      'generateSignature',
      <String, dynamic>{
        'shaType': shaType,
        'concatenatedString': concatenatedString
      },
    );
  }

  @override
  Future<void> callPayFort({
    required FortRequest request,
    required PayFortResultCallback callback,
  }) {
    _payFortResultCallback = callback;
    return _methodChannel.invokeMethod('callPayFort', request.asMap());
  }

  @override
  Future<void> callPayFortForApplePay({
    required FortRequest request,
    required String applePayMerchantId,
    required String countryIsoCode,
    required ApplePayResultCallback callback,
  }) {
    if (_platform.isIOS) {
      _applePayResultCallback = callback;
      Map<String, dynamic> arguments = request.asMap();
      arguments.putIfAbsent('apple_pay_merchant_id', () => applePayMerchantId);
      arguments.putIfAbsent('country_code', () => countryIsoCode);
      return _methodChannel.invokeMethod('callPayFortForApplePay', arguments);
    } else {
      throw DeviceNotSupportedException(
          'Apple Pay is not supported on this device');
    }
  }

  static Future<dynamic> _nativeCallHandler(MethodCall call) async {
    try {
      switch (call.method) {
        case _MethodType.succeeded:
          if (_payFortResultCallback != null) {
            PayFortResult result = PayFortResult.fromMap(
                Map<String, dynamic>.from(call.arguments));
            _payFortResultCallback?.onSucceeded(result);
          }
          break;
        case _MethodType.failed:
          if (_payFortResultCallback != null) {
            _payFortResultCallback?.onFailed(call.arguments['message']);
          }
          break;
        case _MethodType.cancelled:
          if (_payFortResultCallback != null) {
            _payFortResultCallback?.onCancelled();
          }
          break;
        case _MethodType.applePaySucceeded:
          if (_applePayResultCallback != null) {
            PayFortResult result = PayFortResult.fromMap(
                Map<String, dynamic>.from(call.arguments));
            _applePayResultCallback?.onSucceeded(result);
          }
          break;
        case _MethodType.applePayFailed:
          if (_applePayResultCallback != null) {
            _applePayResultCallback?.onFailed(call.arguments['message']);
          }
          break;
        default:
          throw Exception('unknown method called from native');
      }
    } catch (e) {
      throw Exception(e);
    }
    return false;
  }
}

class _MethodType {
  _MethodType._();

  static const String succeeded = 'succeeded';

  static const String failed = 'failed';

  static const String cancelled = 'cancelled';

  static const String applePaySucceeded = 'apple_pay_succeeded';

  static const String applePayFailed = 'apple_pay_failed';
}
