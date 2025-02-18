require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name            = '@iftek-react-native-print'
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/yuan9090/react-native-print"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "yuan9090" => "yuan9090@gmail.com" }

  s.requires_arc   = true
  s.platform       = :ios, '7.0'

  s.source          = { :git => "https://github.com/yuan9090/react-native-print", :tag => "v#{s.version}" }
  s.source_files    = 'ios/**/*.{h,m}'

  s.dependency 'React-Core'
end
