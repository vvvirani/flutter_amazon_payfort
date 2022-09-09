import 'package:amazon_payfort/amazon_payfort.dart';

class FortConstants {
  FortConstants._();

  static const FortEnvironment environment = FortEnvironment.test;

  static const String merchantIdentifier = '< Enter your Merchant Identifier >';

  // For Debit/Credit Card
  static const String accessCode = '< Enter your Access Code >';
  static const String shaType = '< Enter your SHA Type >';
  static const String shaRequestPhrase = '< Enter your SHA Request Phrase >';

  // For Apple Pay
  static const String applePayAccessCode = '< Enter your Access Code >';
  static const String applePayShaType = '< Enter your SHA Type >';
  static const String applePayShaRequestPhrase =
      '< Enter your SHA Request Phrase >';

  static const String applePayMerchantId =
      '< Enter your Apple Pay Merchant Id >';
}
