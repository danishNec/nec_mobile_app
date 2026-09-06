#
# eKey 2.0 app-to-app login — Flutter plugin (iOS).
# Wraps the vendored EkeySDK.xcframework.
#
Pod::Spec.new do |s|
  s.name             = 'ekey_flutter_sdk'
  s.version          = '1.0.0'
  s.summary          = 'eKey 2.0 app-to-app login for Flutter (iOS).'
  s.description      = <<-DESC
Flutter plugin that wraps the native EkeySDK.xcframework and exposes the
eKey 2.0 app-to-app OIDC login flow over a method channel.
                       DESC
  s.homepage         = 'https://example.com/ekey_flutter_sdk'
  s.license          = { :type => 'UNLICENSED' }
  s.author           = { 'NEC' => 'noreply@nec.com' }
  s.source           = { :path => '.' }

  s.source_files        = 'Classes/**/*'
  s.vendored_frameworks = 'Frameworks/EkeySDK.xcframework'

  s.dependency 'Flutter'
  s.platform = :ios, '14.0'
  s.swift_version = '5.0'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
