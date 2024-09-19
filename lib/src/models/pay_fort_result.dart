class PayFortResult {
  /// Response Code carries the value of our system’s response. *The code consists of five digits,
  /// the first 2 digits represent the response status [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#statuses],
  /// and the last 3 digits represent the response messages [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#messages].
  ///
  final String? responseCode;

  /// The message description of the response code; it returns according to the request language..
  ///
  final String? responseMessage;

  /// Command
  ///
  final String? command;

  /// The Merchant’s unique order number.
  ///
  final String? merchantReference;

  /// The transaction’s amount.
  /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
  ///
  final String? amount;

  /// The currency of the transaction’s amount in ISO code 3.
  ///
  final String? currency;

  /// The order’s unique reference returned by Amazon Payfort system.
  ///
  final String? fortId;

  /// The customer’s email.
  ///
  final String? customerEmail;

  /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
  ///
  final String? sdkToken;

  /// The Token received from the Tokenization process.
  ///
  final String? tokenName;

  /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
  ///
  final String? paymentOption;

  /// The E-commerce indicator.
  ///
  final String? eci;

  /// The authorization code returned from the 3rd party.
  ///
  final String? authorizationCode;

  /// It holds the description of the order.
  ///
  final String? orderDescription;

  /// It holds the customer’s IP address.
  ///
  final String? customerIp;

  /// The customer’s name.
  ///
  final String? customerName;

  /// The card’s expiry date.
  ///
  final String? expiryDate;

  /// The masked credit card’s number. Only the [MEEZA] payment option takes 19 digits card number.
  ///
  final String? cardNumber;

  /// A two-digit numeric value that indicates the status of the transaction.
  ///
  final String? status;

  /// The customer’s phone number.
  ///
  final String? phoneNumber;

  const PayFortResult({
    this.responseCode,
    this.responseMessage,
    this.command,
    this.merchantReference,
    this.amount,
    this.currency,
    this.fortId,
    this.customerEmail,
    this.sdkToken,
    this.tokenName,
    this.paymentOption,
    this.eci,
    this.authorizationCode,
    this.orderDescription,
    this.customerIp,
    this.customerName,
    this.expiryDate,
    this.cardNumber,
    this.status,
    this.phoneNumber,
  });

  factory PayFortResult.fromMap(Map<String, dynamic> map) {
    return PayFortResult(
      responseCode: map['response_code'],
      responseMessage: map['response_message'],
      command: map['command'],
      merchantReference: map['merchant_reference'],
      amount: map['amount'],
      currency: map['currency'],
      fortId: map['fort_id'],
      customerEmail: map['customer_email'],
      sdkToken: map['sdk_token'],
      tokenName: map['token_name'],
      paymentOption: map['payment_option'],
      eci: map['eci'],
      authorizationCode: map['authorization_code'],
      orderDescription: map['order_description'],
      customerIp: map['customer_ip'],
      customerName: map['customer_name'],
      expiryDate: map['expiry_date'],
      cardNumber: map['card_number'],
      status: map['status'],
      phoneNumber: map['phoneNumber'],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'response_code': responseCode,
      'response_message': responseMessage,
      'command': command,
      'merchant_reference': merchantReference,
      'amount': amount,
      'currency': currency,
      'fort_id': fortId,
      'customer_email': customerEmail,
      'sdk_token': sdkToken,
      'token_name': tokenName,
      'payment_option': paymentOption,
      'eci': eci,
      'authorization_code': authorizationCode,
      'order_description': orderDescription,
      'customer_ip': customerIp,
      'customer_name': customerName,
      'expiry_date': expiryDate,
      'card_number': cardNumber,
      'status': status,
      'phoneNumber': phoneNumber,
    };
  }
}
