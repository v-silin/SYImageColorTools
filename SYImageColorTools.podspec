Pod::Spec.new do |s|
  s.name     = 'SYImageColorTools'
  s.version  = '0.1.3'
  s.license  = 'Custom'
  s.summary  = 'It s always a hassle to get pixel information of an UIImage. Let s remedy that'
  s.homepage = 'https://github.com/dvkch/SYImageColorTools'
  s.author   = { 'Stan Chevallier' => 'contact@syan.me' }
  s.source   = { :git => 'https://github.com/dvkch/SYImageColorTools.git', :tag => s.version.to_s }
  s.requires_arc = true

  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }
  s.ios.deployment_target = '5.0'
  s.source_files = 'Classes/*.{h,m}'

  s.subspec 'GPUImage' do |ss|
    ss.source_files = 'Classes/*.{h,m}', 'Classes/GPUImage/*.{h.m}'
  end
end

