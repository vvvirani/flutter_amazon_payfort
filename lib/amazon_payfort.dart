import 'package:amazon_payfort/amazon_payfort_platform_interface.dart';
import 'package:amazon_payfort/src/helpers/call_backs.dart';
import 'package:amazon_payfort/src/helpers/exceptions.dart';
import 'package:amazon_payfort/src/models/fort_request.dart';
import 'package:amazon_payfort/src/models/pay_fort_options.dart';

export 'src/enums/fort_environment.dart';

export 'src/models/models.dart';

export 'src/helpers/call_backs.dart';
export 'src/helpers/exceptions.dart';

/// Amazon Payment Services is the new name for PayFort.
/// PayFort is a leading provider of payment processing services that was acquired by Amazon in 2017.
/// Throughout this section, and in our API reference and SDK guides, you will see reference to PayFort.
/// You may also see reference to Fort or FORT.
/// We continue to use PayFort and Fort in our documentation for the simple reason
/// that the code that powers Amazon Payment Services still contains references to PayFort.
/// To ensure ongoing stability, and to minimize the development overhead for our customers,
/// we are slowly but steadily changing references to PayFort across our core code and our documentation.
/// In the meantime, when you see PayFort or Fort,
/// you can safely assume that we are referring to Amazon Payment Services features and benefits.
///
class AmazonPayfort {
  AmazonPayfort._();

  static bool _isInitialize = false;

  static final AmazonPayfort _instance = AmazonPayfort._();

  static AmazonPayfort get instance => _instance;

  static final AmazonPayfortPlatform _platform = AmazonPayfortPlatform.instance;

  static Future<bool> initialize(PayFortOptions options) async {
    _isInitialize = await _platform.initialize(options);
    return _isInitialize;
  }

  /// Please make sure to use the following function to generate the [device_id] parameter value that
  /// must be used for creating the sdk_token from your business security server:
  ///
  Future<String?> getDeviceId() {
    if (_isInitialize) {
      return _platform.getDeviceId();
    } else {
      throw PayFortNotInitialzedException();
    }
  }

  /// The Signature is a parameter that holds the digital signature value calculated by the SHA algorithm.
  /// The digital signature is used to authenticate the sender and receiver of the message and allows
  /// the receiver to verify the integrity of the message.
  ///
  Future<String?> generateSignature({
    required String shaType,
    required String concatenatedString,
  }) {
    if (_isInitialize) {
      return _platform.generateSignature(
        shaType: shaType,
        concatenatedString: concatenatedString,
      );
    } else {
      throw PayFortNotInitialzedException();
    }
  }

  /// Standard payment screen.
  /// You can use the standard Amazon Payment Services mobile SDK interface to display a standard payment screen.
  /// This standard payment view is customizable in three ways.
  ///
  Future<void> callPayFort({
    required FortRequest request,
    required PayFortResultCallback callBack,
  }) async {
    if (_isInitialize) {
      return await _platform.callPayFort(request: request, callback: callBack);
    } else {
      throw PayFortNotInitialzedException();
    }
  }

  ///  Apple Pay is a digital wallet that allows your customers to
  /// make payments using different Apple devices via the Amazon Payment Services iOS SDK.
  Future<void> callPayFortForApplePay({
    required FortRequest request,
    required String countryIsoCode,
    required String applePayMerchantId,
    required ApplePayResultCallback callback,
  }) async {
    if (_isInitialize) {
      return await _platform.callPayFortForApplePay(
        request: request,
        countryIsoCode: countryIsoCode,
        applePayMerchantId: applePayMerchantId,
        callback: callback,
      );
    } else {
      throw PayFortNotInitialzedException();
    }
  }
}
