class PayFortNotInitializedException implements Exception {
  String message =
      'Ensure to initialize AmazonPayfort before accessing it. Please execute the initialize method : AmazonPayfort.initialize()';
}

class DeviceNotSupportedException implements Exception {
  final String message;

  DeviceNotSupportedException(this.message);
}
