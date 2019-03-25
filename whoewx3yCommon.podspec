

Pod::Spec.new do |s|


  s.name         = "whoewx3yCommon"
  s.version      = "0.0.7"
  s.summary      = "Nutdanai framework."
  s.license      = 'MIT'

  s.homepage     = "https://github.com/nutdanai44/whoewx3y.git"
  s.author       = { "Whoewx3Y" => "mellonb77@gmail.com" }

  s.platform     = :ios, "10.3"
  s.source       = { :git => "https://github.com/nutdanai44/Whoewx3yCommon.git", :tag => "#{s.version}" }


  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'Whoewx3yCommon/Whoewx3yCommon/Source/**/*.{h,m,swift}'
  end
  
  s.requires_arc = true
end
