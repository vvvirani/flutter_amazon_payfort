import 'package:freezed_annotation/freezed_annotation.dart';

part 'sdk_token_request.freezed.dart';

const String _cammand = 'SDK_TOKEN';

@freezed
class SdkTokenRequest with _$SdkTokenRequest {
  const SdkTokenRequest._();

  const factory SdkTokenRequest({
    /// Alphanumeric access code.
    ///
    @JsonKey(name: 'access_code') required String accessCode,

    /// The ID of the Merchant.
    ///
    @JsonKey(name: 'merchant_identifier') required String merchantIdentifier,

    /// The checkout page and messages language.
    /// By default language is [en].
    ///
    @Default('en') String language,

    /// A unique device identifier.
    ///
    @JsonKey(name: 'device_id') required final String deviceId,

    /// A string hashed using the [Secure Hash Algorithm]. Please refer to section Signature.
    ///
    String? signature,
  }) = _SdkTokenRequest;

  Map<String, dynamic> toRequest() {
    return <String, dynamic>{
      'service_command': _cammand,
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
        'service_command=$_cammand'
        '$shaRequestPhrase';
  }
}
