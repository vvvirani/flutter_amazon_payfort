import 'package:amazon_payfort/amazon_payfort.dart';
import 'package:amazon_payfort_example/apis/payfort_api.dart';
import 'package:amazon_payfort_example/constants/fort_constants.dart';
import 'package:amazon_payfort_example/models/sdk_token_response.dart';
import 'package:amazon_payfort_example/providers/default_change_notifier.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:uuid/uuid.dart';

class PaymentProvider extends DefaultChangeNotifier {
  final AmazonPayfort _payfort = AmazonPayfort.instance;

  final NetworkInfo _info = NetworkInfo();

  Future<void> init() async {
    /// Step 1:  Initialize Amazon Payfort
    await AmazonPayfort.initialize(
      const PayFortOptions(environment: FortConstants.environment),
    );
  }

  Future<void> paymentWithCreditOrDebitCard({
    required SucceededCallback onSucceeded,
    required FailedCallback onFailed,
    required CancelledCallback onCancelled,
  }) async {
    try {
      SdkTokenResponse? sdkTokenResponse = await _generateSdkToken();

      if (sdkTokenResponse != null && sdkTokenResponse.sdkToken == null) {
        onFailed(sdkTokenResponse.responseMessage ?? '');
        return;
      }

      /// Step 4: Processing Payment [Amount multiply with 100] ex. 10 * 100 = 1000 (10 SAR)
      /// Amount value send always round ex. [100] not [100.00, 100.21]
      FortRequest request = FortRequest(
        amount: 10 * 100,
        customerName: 'Test Customer',
        customerEmail: 'test@customer.com',
        orderDescription: 'Test Order',
        sdkToken: sdkTokenResponse?.sdkToken ?? '',
        merchantReference: const Uuid().v4(),
        currency: 'SAR',
        customerIp: (await _info.getWifiIP() ?? ''),
      );

      _payfort.callPayFort(
        request: request,
        callBack: PayFortResultCallback(
          onSucceeded: onSucceeded,
          onFailed: onFailed,
          onCancelled: onCancelled,
        ),
      );
    } catch (e) {
      onFailed(e.toString());
    }
  }

  Future<void> paymentWithApplePay({
    required SucceededCallback onSucceeded,
    required FailedCallback onFailed,
  }) async {
    try {
      SdkTokenResponse? sdkTokenResponse =
          await _generateSdkToken(isApplePay: true);

      if (sdkTokenResponse != null && sdkTokenResponse.sdkToken == null) {
        onFailed(sdkTokenResponse.responseMessage ?? '');
        return;
      }

      /// Step 4: Processing Payment [Don't multiply with 100]
      /// Amount value send always round ex. [100] not [100.00, 100.21]
      FortRequest request = FortRequest(
        amount: 1000,
        customerName: 'Test Customer',
        customerEmail: 'test@customer.com',
        orderDescription: 'Test Order',
        sdkToken: sdkTokenResponse?.sdkToken ?? '',
        merchantReference: const Uuid().v4(),
        currency: 'SAR',
        customerIp: (await _info.getWifiIP() ?? ''),
      );

      _payfort.callPayFortForApplePay(
        request: request,
        countryIsoCode: 'SA',
        applePayMerchantId: FortConstants.applePayMerchantId,
        callback: ApplePayResultCallback(
          onSucceeded: onSucceeded,
          onFailed: onFailed,
        ),
      );
    } catch (e) {
      onFailed(e.toString());
    }
  }

  Future<SdkTokenResponse?> _generateSdkToken({bool isApplePay = false}) async {
    try {
      loading = true;

      var accessCode = isApplePay
          ? FortConstants.applePayAccessCode
          : FortConstants.accessCode;
      var shaRequestPhrase = isApplePay
          ? FortConstants.applePayShaRequestPhrase
          : FortConstants.shaRequestPhrase;
      String? deviceId = await _payfort.getDeviceId();

      /// Step 2:  Generate the Signature
      SdkTokenRequest tokenRequest = SdkTokenRequest(
        accessCode: accessCode,
        deviceId: deviceId ?? '',
        merchantIdentifier: FortConstants.merchantIdentifier,
      );

      String? signature = await _payfort.generateSignature(
        shaType: FortConstants.shaType,
        concatenatedString: tokenRequest.toConcatenatedString(shaRequestPhrase),
      );

      tokenRequest = tokenRequest.copyWith(signature: signature);

      /// Step 3: Generate the SDK Token
      return await PayFortApi.generateSdkToken(tokenRequest);
    } finally {
      loading = false;
    }
  }
}
