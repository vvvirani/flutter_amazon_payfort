#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amazon_payfort.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amazon_payfort'
  s.version          = '0.0.8'
  s.summary          = 'Flutter plugin for Amazon Payment Services (Payfort). It supports both android and iOS.'
  s.description      = <<-DESC
Flutter plugin for Amazon Payment Services (Payfort). It supports both android and iOS.
                       DESC
  s.homepage         = 'https://github.com/vvvirani/flutter_amazon_payfort'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Vishal Virani' => 'vvvirani@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'PayFortSDK'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
