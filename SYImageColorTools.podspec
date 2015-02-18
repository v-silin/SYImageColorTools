Pod::Spec.new do |s|
  s.name     = 'SYImageColorTools'
  s.version  = '0.1'
  s.license  = ''
  s.summary  = 'It s always a hassle to get pixel information of an UIImage. Let s remedy that'
  s.homepage = 'https://github.com/dvkch/SYImageColorTools'
  s.author   = { 'Stan Chevallier' => 'contact@stanislaschevallier.fr' }
  s.source   = { :git => 'https://github.com/dvkch/SYImageColorTools.git' }
  s.requires_arc = true

  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }
  s.ios.deployment_target = '5.0'

  s.subspec 'Core' do |ss|
    ss.source_files = 'Classes/*.{h,m}'
  end
  s.subspec 'GPUImage' do |ss|
    ss.dependency = 'SYImageColorTools/Core'
    ss.source_files = 'Classes/GPUImage/*.{h.m}'
  end
end

