import 'package:amazon_payfort/src/enums/fort_environment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_fort_options.freezed.dart';

const AndroidOptions _defaultAndroidOptions = AndroidOptions();

const IosOptions _defaultIOSOptions = IosOptions();

@freezed
class PayFortOptions with _$PayFortOptions {
  const PayFortOptions._();

  const factory PayFortOptions({
    required FortEnvironment environment,
    @Default(_defaultAndroidOptions) AndroidOptions androidOptions,
    @Default(_defaultIOSOptions) IosOptions iosOptions,
  }) = _PayFortOptions;

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

@freezed
class AndroidOptions with _$AndroidOptions {
  const factory AndroidOptions({
    @Default(true) bool isShowResponsePage,
    @Default(true) bool showLoading,
  }) = _AndroidOptions;
}

@freezed
class IosOptions with _$IosOptions {
  const factory IosOptions({
    @Default(false) bool hideLoading,
    @Default(true) bool presentAsDefault,
    @Default(true) bool isShowResponsePage,
  }) = _IosOptions;
}
