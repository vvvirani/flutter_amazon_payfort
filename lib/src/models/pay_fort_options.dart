import 'package:amazon_payfort/src/enums/fort_environment.dart';

const AndroidOptions _kDefaultAndroidOptions = AndroidOptions();

const IosOptions _kDefaultIOSOptions = IosOptions();

class PayFortOptions {
  final FortEnvironment environment;
  final AndroidOptions androidOptions;
  final IosOptions iosOptions;

  const PayFortOptions({
    required this.environment,
    this.androidOptions = _kDefaultAndroidOptions,
    this.iosOptions = _kDefaultIOSOptions,
  });

  Map<String, dynamic> payFortAndroidOptions() {
    return {
      'environment': environment.name,
      'isShowResponsePage': androidOptions.isShowResponsePage,
      'showLoading': androidOptions.showLoading,
    };
  }

  Map<String, dynamic> payFortIosOptions() {
    return {
      'environment': environment.name,
      'hideLoading': iosOptions.hideLoading,
      'presentAsDefault': iosOptions.presentAsDefault,
      'isShowResponsePage': iosOptions.isShowResponsePage,
    };
  }
}

class AndroidOptions {
  final bool isShowResponsePage;
  final bool showLoading;

  const AndroidOptions({
    this.isShowResponsePage = true,
    this.showLoading = true,
  });
}

class IosOptions {
  final bool hideLoading;
  final bool presentAsDefault;
  final bool isShowResponsePage;

  const IosOptions({
    this.hideLoading = false,
    this.presentAsDefault = true,
    this.isShowResponsePage = true,
  });
}
