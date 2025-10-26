Pod::Spec.new do |s|

  s.name         = "AABridge"
  s.version      = "2.5.0"
  s.summary      = "AABridge is a C bridge to AA+. It is the base upon which SwiftAA is crafted."

  s.homepage     = "https://www.onekiloparsec.dev/SwiftAA"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "onekiloparsec (a.k.a. Cédric Foellmi)" => "cedric@onekiloparsec.dev" }
  s.social_media_url   = "https://twitter.com/onekiloparsec"

  #  When using multiple platforms
  s.ios.deployment_target = "13.0"
  s.osx.deployment_target = "10.15"
  s.watchos.deployment_target = "7.0"
  s.tvos.deployment_target = "12.0"

  s.source       = { :git => "https://github.com/onekiloparsec/SwiftAA.git", :tag => "#{s.version}" }

  s.framework    = "Foundation"
  s.swift_version = "5"

  s.name          = "AABridge"
  s.source_files  = "Sources/AABridge", "Sources/AABridge/**/*.{h,cpp}", "Sources/AA+", "Sources/AA+/**/*.{h,cpp}"
  s.public_header_files = "Sources/AABridge/include/*.h"
  s.exclude_files = "Sources/AA+/AATest.cpp", "Sources/AA+/include/AAVSOP2013.h", "Sources/AA+/AAVSOP2013.cpp"
  
  s.library = 'c++'
  s.xcconfig = {
       'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17',
       'CLANG_CXX_LIBRARY' => 'libc++'
  }

end
