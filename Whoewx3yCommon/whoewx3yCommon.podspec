

Pod::Spec.new do |s|


  s.name         = "whoewx3yCommon"
  s.version      = "0.0.1"
  s.summary      = "A short description of whoewx3yCommon."
  s.license      = "MIT"

  s.author             = { "nutdanai" => "mellonb77@gmail.com" }

  s.ios.deployment_target = "8.0"


  s.framework  = "UIKit"
  s.requires_arc = true

  s.subspec "All" do |ss|
   ss.ios.dependency 'whoewx3yCommon/whoewx3yCommon'
  end

  s.subspec "whoewx3yCommon" do |ss|
   ss.ios.dependency 'whoewx3yCommon/Source/**'
  end

end
