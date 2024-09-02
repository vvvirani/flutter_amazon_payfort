class PayFortFailureResult {
  /// The message description of the response code; it returns according to the request language..
  ///
  final String responseMessage;

  final Map<String, Object?>? response;

  PayFortFailureResult({
    required this.responseMessage,
    this.response,
  });

  factory PayFortFailureResult.fromMap(Map<String, dynamic> map) {
    return PayFortFailureResult(
      responseMessage: map['response_message'],
      response: map['response'],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'response_message': responseMessage,
      'response': response,
    };
  }
}
