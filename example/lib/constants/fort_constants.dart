import 'package:amazon_payfort/amazon_payfort.dart';

class FortConstants {
  FortConstants._();

  static const FortEnvironment environment = FortEnvironment.test;
  static const String merchantIdentifier = 'a22cf652';

// For Debit/Credit Card
  static const String accessCode = 'zhV548hfhLbKb69Yf3h0';
  static const String shaType = 'SHA-256';
  static const String shaRequestPhrase = '87cpfpOPZY6fn0GLn7fY98?}';

// For Apple Pay
  static const String applePayAccessCode = '9ogSafW0OJ4shiPF6KC0';
  static const String applePayShaType = 'SHA-256';
  static const String applePayShaRequestPhrase = '15uQZibFMBqxPrZEKgjwOm_]';

  static const String applePayMerchantId = 'merchant.d.dooskarting.com';
}
