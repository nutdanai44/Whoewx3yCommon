

Pod::Spec.new do |s|


  s.name         = "whoewx3yCommon"
  s.version      = "0.0.3"
  s.summary      = "Nutdanai framework."
  s.license      = "MIT"

  s.homepage     = "https://github.com/nutdanai44/whoewx3y.git"
  s.author             = { "nutdanai" => "mellonb77@gmail.com" }

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/nutdanai44/whoewx3y.git", :tag => "#{s.version}" }
  s.source_files = "whoewx3yCommon/whoewx3yCommon/**/*.{h,m,swift}"
  s.resources = "whoewx3yCommon/whoewx3yCommon/**/*.{xib}"
  
  s.framework  = "UIKit"
  s.requires_arc = true
  s.subspec "All" do |ss|
   ss.ios.dependency 'whoewx3yCommon/whoewx3yCommon'
  end

  s.subspec "whoewx3yCommon" do |ss|
   ss.ios.dependency 'whoewx3yCommon/Source/**'
  end

end
