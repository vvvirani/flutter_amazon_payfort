class PayFortFailureResult {
  /// The message description of the response code; it returns according to the request language..
  ///
  final String message;

  final Map<String, dynamic>? response;

  const PayFortFailureResult({
    required this.message,
    this.response,
  });

  factory PayFortFailureResult.fromMap(Map<String, dynamic> map) {
    return PayFortFailureResult(
      message: map['message'],
      response: (map['response'] as Map?)?.cast(),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'response': response,
    };
  }
}
