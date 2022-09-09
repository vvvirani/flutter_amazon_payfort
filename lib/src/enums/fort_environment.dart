/// These are the URLs you need to use when you request a mobile SDK token for your Android app:
enum FortEnvironment {
  /// Test environment
  /// https://sbpaymentservices.payfort.com
  test('https://sbpaymentservices.payfort.com/FortAPI/paymentApi'),

  // Production environment
  /// https://paymentservices.payfort.com
  production('https://paymentservices.payfort.com/FortAPI/paymentApi');

  final String url;

  const FortEnvironment(this.url);
}
