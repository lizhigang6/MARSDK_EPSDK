

Pod::Spec.new do |s|
  s.name             = 'MARSDK_EPSDK'
  s.version          = '0.1.0'
  s.summary          = '火星人打包工具'



  s.description      = <<-DESC
火星人打包工具sdk 
                       DESC

  s.homepage         = 'https://github.com/izhigang6@163.com/MARSDK_EPSDK.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'izhigang6@163.com' => 'lizhigang6@163.com' }
  s.source           = { :git => 'https://github.com/izhigang6@163.com/MARSDK_EPSDK.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'

  s.source_files = 'MARSDK_EPSDK/Classes/**/*'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }  

end
