

Pod::Spec.new do |s|


  s.name         = "whoewx3yCommon"
  s.version      = "0.0.3"
  s.summary      = "Nutdanai framework."
  s.license      = "MIT"

  s.homepage     = "https://github.com/nutdanai44/whoewx3y.git"
  s.author       = { "Whoewx3Y" => "mellonb77@gmail.com" }

  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/nutdanai44/whoewx3y.git", :tag => "#{s.version}" }
  s.source_files = "whoewx3yCommon/whoewx3yCommon/Main/**/*.{h,m,swift}"
  s.resources = "whoewx3yCommon/whoewx3yCommon/Main/**/*.{xib}"
  s.exclude_files = [ "whoewx3yCommon/Source/Extension/**" ]

  
  s.framework  = "UIKit"
  s.requires_arc = true
end
