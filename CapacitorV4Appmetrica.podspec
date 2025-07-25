require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'CapacitorV4Appmetrica'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target  = '14.0'
  s.dependency 'Capacitor'
  s.dependency "YandexMobileMetrica", "4.5.2"
  s.library = "sqlite3"
  s.library = "z"
  s.library = "c++"
  s.swift_version = '5.1'
  s.static_framework = true
  s.xcconfig = {
    "OTHER_LDFLAGS" => "-lc++ -lz",
  }
end
