import 'dart:convert';

import 'package:amazon_payfort/src/enums/response_status.dart';

class PayfortResult {
  PayfortResult({
    this.responseCode,
    this.responseStatus,
    this.responseMessage,
    this.command,
    this.merchantReference,
    this.orderDescription,
    this.amount,
    this.currency,
    this.fortId,
    this.customerEmail,
    this.sdkToken,
    this.tokenName,
    this.paymentOption,
    this.eci,
    this.authorizationCode,
    this.customerIp,
    this.customerName,
    this.expiryDate,
    this.cardNumber,
    this.status,
    this.phoneNumber,
  });

  /// Response Code carries the value of our system’s response. *The code consists of five digits,
  /// the first 2 digits represent the response status [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#statuses],
  /// and the last 3 digits represent the response messages [https://paymentservices-reference.payfort.com/docs/api/build/index.html?java#messages].
  ///
  String? responseCode;

  /// Transaction status : [success], [failure] and [canceled]
  ResponseStatus? responseStatus;

  /// The message description of the response code; it returns according to the request language..
  ///
  String? responseMessage;

  /// Command
  ///
  String? command;

  /// The Merchant’s unique order number.
  ///
  String? merchantReference;

  /// The transaction’s amount.
  /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
  ///
  String? amount;

  /// The currency of the transaction’s amount in ISO code 3.
  ///
  String? currency;

  /// The order’s unique reference returned by Amazon Payfort system.
  ///
  String? fortId;

  /// The customer’s email.
  ///
  String? customerEmail;

  /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
  ///
  String? sdkToken;

  /// The Token received from the Tokenization process.
  ///
  String? tokenName;

  /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
  ///
  String? paymentOption;

  /// The E-commerce indicator.
  ///
  String? eci;

  /// The authorization code returned from the 3rd party.
  ///
  String? authorizationCode;

  /// It holds the description of the order.
  ///
  String? orderDescription;

  /// It holds the customer’s IP address.
  ///
  String? customerIp;

  /// The customer’s name.
  ///
  String? customerName;

  /// The card’s expiry date.
  ///
  String? expiryDate;

  /// The masked credit card’s number. Only the [MEEZA] payment option takes 19 digits card number.
  ///
  String? cardNumber;

  /// A two-digit numeric value that indicates the status of the transaction.
  ///
  String? status;

  /// The customer’s phone number.
  ///
  String? phoneNumber;

  factory PayfortResult.fromMap(Map<String, dynamic> data) {
    return PayfortResult(
      responseCode: data['response_code'],
      responseStatus: ResponseStatus.values[data['response_status']],
      responseMessage: data['response_message'],
      command: data['command'],
      merchantReference: data['merchant_reference'],
      amount: data['amount'],
      currency: data['currency'],
      fortId: data['fort_id'],
      customerEmail: data['customer_email'],
      sdkToken: data['sdk_token'],
      tokenName: data['token_name'],
      paymentOption: data['payment_option'],
      eci: data['eci'],
      authorizationCode: data['authorization_code'],
      customerIp: data['customer_ip'],
      customerName: data['customer_name'],
      orderDescription: data['order_description'],
      expiryDate: data['expiry_date'],
      cardNumber: data['card_number'],
      status: data['status'],
      phoneNumber: data['phone_number'],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'response_code': responseCode,
      'response_status': responseStatus?.index,
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
      'customer_ip': customerIp,
      'customer_name': customerName,
      'order_description': orderDescription,
      'expiry_date': expiryDate,
      'card_number': cardNumber,
      'status': status,
      'phone_number': phoneNumber,
    };
  }

  @override
  String toString() {
    return jsonEncode(toMap());
  }
}
