require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-simple-toast"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/fhy-hue/react-native-simple-toast"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "fhy-hue" => "h.fu@bow.cn.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/fhy-hue/react-native-simple-toast.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end

