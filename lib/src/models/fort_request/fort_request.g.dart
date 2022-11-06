// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fort_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FortRequest _$$_FortRequestFromJson(Map<String, dynamic> json) =>
    _$_FortRequest(
      amount: json['amount'] as num,
      customerName: json['customer_name'] as String,
      customerEmail: json['customer_email'] as String,
      orderDescription: json['order_description'] as String,
      sdkToken: json['sdk_token'] as String,
      customerIp: json['customer_ip'] as String,
      currency: json['currency'] as String? ?? 'USD',
      language: json['language'] as String? ?? 'en',
      merchantReference: json['merchant_reference'] as String,
      tokenName: json['token_name'] as String?,
      paymentOption: json['payment_option'] as String?,
      eci: json['eci'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$_FortRequestToJson(_$_FortRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'customer_name': instance.customerName,
      'customer_email': instance.customerEmail,
      'order_description': instance.orderDescription,
      'sdk_token': instance.sdkToken,
      'customer_ip': instance.customerIp,
      'currency': instance.currency,
      'language': instance.language,
      'merchant_reference': instance.merchantReference,
      'token_name': instance.tokenName,
      'payment_option': instance.paymentOption,
      'eci': instance.eci,
      'phone_number': instance.phoneNumber,
    };
