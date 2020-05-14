#
# Be sure to run `pod lib lint MMAd.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WanAd'
  s.version          = '1.0.6'
  s.summary          = 'A short description of MMAd.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/LazyJiu/WanAd'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LazyJiu' => '0x170818@gmail.com' }
  s.source           = { :git => 'https://github.com/LazyJiu/WanAd.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'WanAd/QuQu.h'
  s.vendored_library = 'WanAd/libQuQu.a'
  s.resources = ['WanAd/Qu.bundle']
  #s.vendored_frameworks = 'BUAdSDKMM/BUAdSDKMM/BUAdSDK.framework'
  

  #s.preserve_paths = 'MMAd/**/*'


 s.dependency  'UMCShare/UI', '6.9.8'
 s.dependency  'UMCShare/Social/ReducedQQ', '6.9.8'
 s.dependency  'UMCShare/Social/ReducedWeChat', '6.9.8'
 s.dependency  'AFNetworking', '~> 4.0'
 s.dependency  'MBProgressHUD', '~> 1.1.0 '
 s.dependency  'Masonry', '~> 1.1.0'
 s.dependency  'MJRefresh', '~> 3.0'
 s.dependency  'NoPayWeChatSDK' , '1.8.7.1'

 s.dependency  'UMCAnalytics', '6.0.5'
 s.dependency  'JPush', '3.2.6'
 
 s.dependency  'ATAuthSDKMM', '1.0.4'
 s.dependency  'BUAdSDKMM', '1.0.9'
 s.dependency  'GDTMobSDKMM', '1.0.6'
# s.dependency  'MintegralAdSDK/InterstitialVideoAd', '5.8.4'
# s.dependency  'MintegralAdSDK/RewardVideoAd', '5.8.4'
end
