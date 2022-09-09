import 'dart:convert';

class SdkTokenRequest {
  SdkTokenRequest({
    required this.accessCode,
    required this.merchantIdentifier,
    required this.deviceId,
    this.language = 'en',
    this.signature,
  }) : command = 'SDK_TOKEN';

  /// Request Command.
  ///
  final String command;

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
      deviceId: deviceId ?? this.deviceId,
      signature: signature ?? this.signature,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service_command': command,
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
        'service_command=$command'
        '$shaRequestPhrase';
  }

  @override
  String toString() {
    return jsonEncode(toMap());
  }
}
