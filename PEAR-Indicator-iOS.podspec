Pod::Spec.new do |s|
   s.name     = 'PEAR-Indicator-iOS'
   s.version  = '0.0.1'
   s.platform = :'ios', '7.0'
   s.license  = 'MIT'
   s.summary  = 'This is indicator of Library for ios'
   s.homepage = 'https://github.com/HirokiUmatani/PEAR-Indicator-iOS'
   s.author   = { "HirokiUmatani" => "info@pear.chat" }
   s.source   = { :git => 'https://github.com/HirokiUmatani/PEAR-Indicator-iOS.git', :tag => s.version.to_s }
   s.source_files = 'PEAR-Indicator-iOS/*.{h,m}'
   s.resources    = 'Indicator/loading.png'
   s.requires_arc = true
end
