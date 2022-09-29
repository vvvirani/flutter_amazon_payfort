/// These are the URLs you need to use when you request a mobile SDK token for your Android app:
enum FortEnvironment {
  /// Test Environment
  test('https://sbpaymentservices.payfort.com'),

  // Production Environment
  production('https://paymentservices.payfort.com');

  final String _baseUrl;

  String get baseUrl => _baseUrl;

  String get paymentApi => '$_baseUrl/FortAPI/paymentApi';

  const FortEnvironment(this._baseUrl);
}
