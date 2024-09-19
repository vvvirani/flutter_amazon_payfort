import 'package:amazon_payfort/src/models/models.dart';

typedef SucceededCallback = void Function(PayFortResult result);

typedef FailedCallback = void Function(PayFortFailureResult result);

typedef CancelledCallback = void Function();

class PayFortResultCallback {
  final SucceededCallback onSucceeded;
  final FailedCallback onFailed;
  final CancelledCallback onCancelled;

  PayFortResultCallback({
    required this.onSucceeded,
    required this.onFailed,
    required this.onCancelled,
  });
}

class ApplePayResultCallback {
  final SucceededCallback onSucceeded;
  final FailedCallback onFailed;

  ApplePayResultCallback({required this.onSucceeded, required this.onFailed});
}
