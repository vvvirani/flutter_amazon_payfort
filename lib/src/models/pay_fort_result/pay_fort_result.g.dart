// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_fort_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PayFortResult _$$_PayFortResultFromJson(Map<String, dynamic> json) =>
    _$_PayFortResult(
      responseCode: json['response_code'] as String?,
      responseMessage: json['response_message'] as String?,
      command: json['command'] as String?,
      merchantReference: json['merchant_reference'] as String?,
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
      fortId: json['fort_id'] as String?,
      customerEmail: json['customer_email'] as String?,
      sdkToken: json['sdk_token'] as String?,
      tokenName: json['token_name'] as String?,
      paymentOption: json['payment_option'] as String?,
      eci: json['eci'] as String?,
      authorizationCode: json['authorization_code'] as String?,
      orderDescription: json['order_description'] as String?,
      customerIp: json['customer_ip'] as String?,
      customerName: json['customer_name'] as String?,
      expiryDate: json['expiry_date'] as String?,
      cardNumber: json['card_number'] as String?,
      status: json['status'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$_PayFortResultToJson(_$_PayFortResult instance) =>
    <String, dynamic>{
      'response_code': instance.responseCode,
      'response_message': instance.responseMessage,
      'command': instance.command,
      'merchant_reference': instance.merchantReference,
      'amount': instance.amount,
      'currency': instance.currency,
      'fort_id': instance.fortId,
      'customer_email': instance.customerEmail,
      'sdk_token': instance.sdkToken,
      'token_name': instance.tokenName,
      'payment_option': instance.paymentOption,
      'eci': instance.eci,
      'authorization_code': instance.authorizationCode,
      'order_description': instance.orderDescription,
      'customer_ip': instance.customerIp,
      'customer_name': instance.customerName,
      'expiry_date': instance.expiryDate,
      'card_number': instance.cardNumber,
      'status': instance.status,
      'phoneNumber': instance.phoneNumber,
    };
