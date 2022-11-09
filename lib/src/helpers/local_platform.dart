import 'dart:io';

class LocalPlatform {
  /// Android is a mobile operating system based on a modified version of the Linux kernel and other open source software,
  /// designed primarily for touchscreen mobile devices such as smartphones and tablets.
  bool get isAndroid => Platform.isAndroid;

  /// iOS is a mobile operating system created and developed by Apple Inc.
  /// exclusively for its hardware.
  /// It is the operating system that powers many of the company's mobile devices, including the iPhone and iPod Touch;
  /// the term also included the versions running on iPads until iPadOS was introduced in 2019
  bool get isIOS => Platform.isIOS;
}
