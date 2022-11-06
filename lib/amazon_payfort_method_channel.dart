import 'package:amazon_payfort/amazon_payfort.dart';
import 'package:amazon_payfort/src/local_platform.dart';
import 'package:flutter/services.dart';

import 'amazon_payfort_platform_interface.dart';

/// An implementation of [AmazonPayfortPlatform] that uses method channels.
class MethodChannelAmazonPayfort extends AmazonPayfortPlatform {
  /// The method channel used to interact with the native platform.
  final methodChannel = const MethodChannel('vvvirani/amazon_payfort')
    ..setMethodCallHandler(_nativeCallHandler);

  final LocalPlatform _platform = LocalPlatform();

  static SucceededCallback? _succeededCallback;

  static FailedCallback? _failedCallback;

  static CancelledCallback? _cancelledCallback;

  static ApplePaySucceededCallback? _applePaySucceededCallback;

  static ApplePayFailedCallback? _applePayFailedCallback;

  @override
  Future<bool> initialize(PayFortOptions options) async {
    Map<String, dynamic> arguments = _platform.isAndroid
        ? options.payFortAndroidOptions()
        : options.payFortIosOptions();
    return (await methodChannel.invokeMethod<bool>('initialize', arguments)) ??
        false;
  }

  @override
  Future<String?> getDeviceId() {
    String method = _platform.isIOS ? 'getUDID' : 'getDeviceId';
    return methodChannel.invokeMethod<String?>(method);
  }

  @override
  Future<String?> generateSignature({
    required String shaType,
    required String concatenatedString,
  }) {
    return methodChannel.invokeMethod<String?>(
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
    required SucceededCallback onSucceededCallback,
    required FailedCallback onFailedCallback,
    required CancelledCallback onCancelledCallback,
  }) {
    _succeededCallback = onSucceededCallback;
    _failedCallback = onFailedCallback;
    _cancelledCallback = onCancelledCallback;
    Map<String, dynamic> arguments = request.toJson();
    return methodChannel.invokeMethod('callPayFort', arguments);
  }

  @override
  Future<PayFortResult> callPayFortForApplePay({
    required FortRequest request,
    required String applePayMerchantId,
    required ApplePaySucceededCallback applePaySucceededCallback,
    required ApplePayFailedCallback applePayFailedCallback,
  }) {
    if (_platform.isIOS) {
      _applePaySucceededCallback = applePaySucceededCallback;
      _applePayFailedCallback = applePayFailedCallback;
      Map<String, dynamic> arguments = request.toJson();
      arguments.putIfAbsent('applePayMerchantId', () => applePayMerchantId);
      return methodChannel
          .invokeMethod('callPayFortForApplePay', arguments)
          .then((result) {
        return PayFortResult.fromJson(Map<String, dynamic>.from(result));
      });
    } else {
      throw Exception('Apple Pay is not supported on this device');
    }
  }

  static Future<dynamic> _nativeCallHandler(MethodCall call) async {
    try {
      switch (call.method) {
        case _MethodType.succeeded:
          if (_succeededCallback != null) {
            PayFortResult result = PayFortResult.fromJson(
                Map<String, dynamic>.from(call.arguments));
            _succeededCallback!(result);
          }
          break;
        case _MethodType.failed:
          if (_failedCallback != null) {
            _failedCallback!(call.arguments['message']);
          }
          break;
        case _MethodType.cancelled:
          if (_cancelledCallback != null) {
            _cancelledCallback!();
          }
          break;
        case _MethodType.applePaySucceeded:
          if (_applePaySucceededCallback != null) {
            PayFortResult result = PayFortResult.fromJson(
                Map<String, dynamic>.from(call.arguments));
            _applePaySucceededCallback!(result);
          }
          break;
        case _MethodType.applePayFailed:
          if (_applePayFailedCallback != null) {
            _applePayFailedCallback!(call.arguments['message']);
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
