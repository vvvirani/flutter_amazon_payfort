import 'package:amazon_payfort/amazon_payfort.dart';
import 'package:flutter/material.dart';

class PaymentResultScreen extends StatelessWidget {
  final PayfortResult result;

  const PaymentResultScreen(this.result, {super.key});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.white;
    late IconData icon;
    String? message;

    switch (result.responseStatus) {
      case ResponseStatus.success:
        backgroundColor = Colors.green;
        icon = Icons.check_circle;
        message =
            'Transaction successfully completed\n\nTransaction Id: ${result.fortId}';
        break;
      case ResponseStatus.failure:
      case ResponseStatus.cancel:
        backgroundColor = Colors.red;
        icon = Icons.cancel;
        message = result.responseMessage;
        break;
      default:
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 120,
              ),
              const SizedBox(height: 20),
              Text(
                message ?? '',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
