class FortRequest {
  /// The transaction’s command. [AUTHORIZATION, PURCHASE]
  ///
  final String command;

  /// The transaction’s amount.
  /// Each currency has predefined allowed decimal points that should be taken into consideration when sending the amount.
  ///
  final num amount;

  /// The customer’s email. Example: customer1@domain.com
  ///
  final String customerEmail;

  /// An SDK Token to enable using the Amazon Payment Services Mobile SDK.
  ///
  final String sdkToken;

  /// The currency of the transaction’s amount in ISO code 3. Example: AED, USD, EUR, GBP.
  /// By Default currency : [USD].
  ///
  final String currency;

  /// The checkout page and messages language.
  /// By default language: [en].
  ///
  final String language;

  /// The Merchant’s unique order number.
  ///
  final String merchantReference;

  /// The customer’s name.
  ///
  final String? customerName;

  /// A description of the order.
  ///
  final String? orderDescription;

  /// It holds the customer’s IP address.
  /// It’s Mandatory, if the fraud service is active.
  /// We support IPv4 and IPv6 as shown in the example below.
  ///
  final String? customerIp;

  /// The Token received from the Tokenization process..
  ///
  final String? tokenName;

  /// Payment option. [MASTERCARD], [VISA], [AMEX] etc...
  ///
  final String? paymentOption;

  /// The E-commerce indicator. example: [ECOMMERCE].
  ///
  final String? eci;

  /// The customer’s phone number.
  ///
  final String? phoneNumber;

  FortRequest({
    required this.command,
    required this.amount,
    required this.customerEmail,
    required this.sdkToken,
    required this.merchantReference,
    this.customerName,
    this.customerIp,
    this.orderDescription,
    this.currency = 'USD',
    this.language = 'en',
    this.tokenName,
    this.paymentOption,
    this.eci,
    this.phoneNumber,
  });

  FortRequest copyWith({
    String? command,
    num? amount,
    String? customerEmail,
    String? sdkToken,
    String? customerName,
    String? orderDescription,
    String? customerIp,
    String? currency,
    String? language,
    String? merchantReference,
    String? tokenName,
    String? paymentOption,
    String? eci,
    String? phoneNumber,
  }) {
    return FortRequest(
      command: command ?? this.command,
      amount: amount ?? this.amount,
      customerEmail: customerEmail ?? this.customerEmail,
      sdkToken: sdkToken ?? this.sdkToken,
      customerName: customerName ?? this.customerName,
      customerIp: customerIp ?? this.customerIp,
      orderDescription: orderDescription ?? this.orderDescription,
      currency: currency ?? this.currency,
      language: language ?? this.language,
      merchantReference: merchantReference ?? this.merchantReference,
      tokenName: tokenName ?? this.tokenName,
      paymentOption: paymentOption ?? this.paymentOption,
      eci: eci ?? this.eci,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  Map<String, dynamic> asMap() {
    return <String, dynamic>{
      'command': command,
      'amount': '$amount',
      'customer_email': customerEmail,
      'sdk_token': sdkToken,
      'customer_name': customerName,
      'customer_ip': customerIp,
      'order_description': orderDescription,
      'currency': currency,
      'language': language,
      'merchant_reference': merchantReference,
      'token_name': tokenName,
      'payment_option': paymentOption,
      'eci': eci,
      'phone_number': phoneNumber,
    };
  }
}
