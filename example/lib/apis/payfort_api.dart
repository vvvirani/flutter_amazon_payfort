import 'dart:convert';

import 'package:amazon_payfort/amazon_payfort.dart';
import 'package:amazon_payfort_example/constants/fort_constants.dart';
import 'package:amazon_payfort_example/models/sdk_token_response.dart';
import 'package:http/http.dart';

class PayFortApi {
  PayFortApi._();

  static Future<SdkTokenResponse?> generateSdkToken(
      SdkTokenRequest request) async {
    var response = await post(
      Uri.parse(FortConstants.environment.paymentApi),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(request.asRequest()),
    );
    if (response.statusCode == 200) {
      var decodedResponse = jsonDecode(response.body);
      return SdkTokenResponse.fromMap(decodedResponse);
    }
    return null;
  }
}
