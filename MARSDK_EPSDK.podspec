 
Pod::Spec.new do |s|

  s.name             = 'MARSDK_EPSDK'
  s.version          = '5.5.5'
  s.summary          = '广告渠道配合marsdk 使用'
  s.description  = <<-DESC
火星人打包工具sdk 
                   DESC
s.homepage     = "https://github.com/lizhigang6/MARSDK_EPSDK.git"# 你git库的地址首页,可以在开元中国创建你的库,不需要使用什么初始化方法,不要勾选 readme
s.license          = { :type => 'MIT', :file => 'LICENSE' } #这里不需要改变,使用默认,文件指向的文件名与工程中文件名要一致。
s.author           = { '名字' => 'lizhigang6@163.com' } #作者信息：账户名，账户邮箱地址
s.source           = { :git => 'https://github.com/lizhigang6/MARSDK_EPSDK.git', :tag => s.version.to_s } # 这里输入邮箱如果你在开元中国申请的 git 账号,那么把你在开元中国创建的项目的 https 网址输入到这里,
s.platform     = :ios
s.platform     = :ios, "10.0" #iOS 支持的最低级别,这里最低9.0
s.resource_bundles = {
     'EPSDKResources' => ['MARSDK_EPSDK/Assets/*']
 }
s.vendored_libraries =  'MARSDK_EPSDK/SDK/libMARSDK_EPSDK.a'
s.vendored_frameworks  = 'MARSDK_EPSDK/Classes/*.framework' 
s.frameworks = "Security","SystemConfiguration","AVFoundation","MobileCoreServices","CoreGraphics","CoreTelephony","CoreFoundation","CFNetwork","CoreLocation"
s.ios.library = "icucore","z","c++","icucore","sqlite3","resolv","c++.1"

s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
end