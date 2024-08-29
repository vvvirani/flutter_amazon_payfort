import 'package:amazon_payfort/amazon_payfort.dart';

class FortConstants {
  FortConstants._();

  static const FortEnvironment environment = FortEnvironment.test;
  static const String merchantIdentifier = '';

// For Debit/Credit Card
  static const String accessCode = '';
  static const String shaType = '';
  static const String shaRequestPhrase = '';

// For Apple Pay
  static const String applePayAccessCode = '';
  static const String applePayShaType = '';
  static const String applePayShaRequestPhrase = '';

  static const String applePayMerchantId = '';
}
