require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNTorusDirectSdk"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNTorusDirectSdk
                   DESC
  s.homepage     = "https://github.com/torusresearch/torus-direct-react-native-sdk"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "Torus Labs" => "hello@tor.us" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/torusresearch/torus-direct-react-native-sdk.git", :branch => "feat/ios" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency 'secp256k1.c', '0.1.2'
  #s.dependency "others"
end

