import 'package:amazon_payfort/amazon_payfort.dart';

class PayFortOptions {
  PayFortOptions({
    required this.environment,
    this.androidOptions,
    this.iosOptions,
  });

  final FortEnvironment environment;
  final AndroidOptions? androidOptions;
  final IosOptions? iosOptions;

  Map<String, dynamic> payFortAndroidOptions() {
    return {
      'environment': environment.name,
      'isShowResponsePage': androidOptions?.isShowResponsePage,
      'showLoading': androidOptions?.showLoading,
    };
  }

  Map<String, dynamic> payFortIosOptions() {
    return {
      'environment': environment.name,
      'hideLoading': iosOptions?.hideLoading,
      'presentAsDefault': iosOptions?.presentAsDefault,
      'isShowResponsePage': iosOptions?.isShowResponsePage,
    };
  }
}

class AndroidOptions {
  AndroidOptions({this.isShowResponsePage = true, this.showLoading = true});

  final bool isShowResponsePage;
  final bool showLoading;
}

class IosOptions {
  IosOptions({
    this.hideLoading = false,
    this.presentAsDefault = true,
    this.isShowResponsePage = true,
  });

  final bool hideLoading;
  final bool presentAsDefault;
  final bool isShowResponsePage;
}
