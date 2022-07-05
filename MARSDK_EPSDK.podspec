

Pod::Spec.new do |s|
  s.name             = 'MARSDK_EPSDK'
  s.version          = '0.1.1'
  s.summary          = '火星人打包工具'



  s.description      = <<-DESC
火星人打包工具sdk 
                       DESC

  s.homepage         = 'https://github.com/izhigang6@163.com/MARSDK_EPSDK.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'izhigang6@163.com' => 'lizhigang6@163.com' }
  s.source           = { :git => 'https://github.com/izhigang6@163.com/MARSDK_EPSDK.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.vendored_frameworks =  'MARSDK_EPSDK.git/SDK/*'
  s.frameworks = "Security","SystemConfiguration"

  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }  

end
