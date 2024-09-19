const String _kCommand = 'SDK_TOKEN';

class SdkTokenRequest {
  /// Alphanumeric access code.
  ///
  final String accessCode;

  /// The ID of the Merchant.
  ///
  final String merchantIdentifier;

  /// The checkout page and messages language.
  /// By default language is [en].
  ///
  final String language;

  /// A unique device identifier.
  ///
  final String deviceId;

  /// A string hashed using the [Secure Hash Algorithm]. Please refer to section Signature.
  ///
  final String? signature;

  const SdkTokenRequest({
    required this.accessCode,
    required this.merchantIdentifier,
    this.language = 'en',
    required this.deviceId,
    this.signature,
  });

  SdkTokenRequest copyWith({
    String? accessCode,
    String? merchantIdentifier,
    String? language,
    String? deviceId,
    String? signature,
  }) {
    return SdkTokenRequest(
      accessCode: accessCode ?? this.accessCode,
      merchantIdentifier: merchantIdentifier ?? this.merchantIdentifier,
      language: language ?? this.language,
      deviceId: deviceId ?? this.deviceId,
      signature: signature ?? this.signature,
    );
  }

  Map<String, dynamic> asRequest() {
    return <String, dynamic>{
      'service_command': _kCommand,
      'access_code': accessCode,
      'merchant_identifier': merchantIdentifier,
      'language': language,
      'device_id': deviceId,
      'signature': signature,
    };
  }

  String toConcatenatedString(String shaRequestPhrase) {
    return '$shaRequestPhrase'
        'access_code=$accessCode'
        'device_id=$deviceId'
        'language=$language'
        'merchant_identifier=$merchantIdentifier'
        'service_command=$_kCommand'
        '$shaRequestPhrase';
  }
}
