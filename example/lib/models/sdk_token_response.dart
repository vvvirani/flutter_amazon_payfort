class SdkTokenResponse {
  SdkTokenResponse({
    this.responseCode,
    this.deviceId,
    this.responseMessage,
    this.serviceCommand,
    this.sdkToken,
    this.signature,
    this.merchantIdentifier,
    this.accessCode,
    this.language,
    this.status,
  });

  String? responseCode;
  String? deviceId;
  String? responseMessage;
  String? serviceCommand;
  String? sdkToken;
  String? signature;
  String? merchantIdentifier;
  String? accessCode;
  String? language;
  String? status;

  factory SdkTokenResponse.fromMap(Map<String, dynamic> data) {
    return SdkTokenResponse(
      responseCode: data['response_code'],
      deviceId: data['device_id'],
      responseMessage: data['response_message'],
      serviceCommand: data['service_command'],
      sdkToken: data['sdk_token'],
      signature: data['signature'],
      merchantIdentifier: data['merchant_identifier'],
      accessCode: data['access_code'],
      language: data['language'],
      status: data['status'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'response_code': responseCode,
      'device_id': deviceId,
      'response_message': responseMessage,
      'service_command': serviceCommand,
      'sdk_token': sdkToken,
      'signature': signature,
      'merchant_identifier': merchantIdentifier,
      'access_code': accessCode,
      'language': language,
      'status': status,
    };
  }
}
