import 'dart:io';

import 'package:amazon_payfort_example/providers/payment_provider.dart';
import 'package:amazon_payfort_example/views/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  void _showSnackBar(String message) {
    var snackBar = SnackBar(
      elevation: 0,
      backgroundColor: Colors.black,
      duration: const Duration(seconds: 3),
      content: Text(
        message,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  void initState() {
    super.initState();
    PaymentProvider paymentProvider = context.read<PaymentProvider>();
    paymentProvider.init();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentProvider>(
      builder: (context, paymentProvider, _) {
        return Scaffold(
          appBar: AppBar(title: const Text('Payment')),
          body: Stack(
            children: [
              _buildPaymentMethods(),
              if (paymentProvider.loading) const Loading(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPaymentMethods() {
    var paymentProvider = context.read<PaymentProvider>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PaymentMethodTile(
          icon: Icons.credit_card,
          name: 'Credit or Debit Card',
          onPressed: () {
            paymentProvider.paymentWithCreditOrDebitCard(
              onSucceeded: (result) {
                _showSnackBar('Transaction succeeded: ${result.fortId}');
              },
              onFailed: (error) {
                _showSnackBar(error);
              },
              onCancelled: () {
                _showSnackBar('Cancelled by you');
              },
            );
          },
        ),
        Divider(
          height: 0,
          indent: 10,
          endIndent: 10,
          color: Colors.grey.shade400,
        ),
        if (Platform.isIOS)
          PaymentMethodTile(
            icon: Icons.apple,
            iconSize: 28,
            name: 'Apple Pay',
            onPressed: () {
              paymentProvider.paymentWithApplePay(
                onSucceeded: (result) {
                  _showSnackBar('Transaction succeeded: ${result.fortId}');
                },
                onFailed: (error) {
                  _showSnackBar(error);
                },
              );
            },
          ),
      ],
    );
  }
}
