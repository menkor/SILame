#
# Be sure to run `pod lib lint SILame.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SILame'
  s.version          = '0.1.5'
  s.summary          = 'Lame for Super Id.'

  s.description      = <<-DESC
.mp3 file encode and decode.
                       DESC

  s.homepage         = 'http://superid.cn:81/iOS/SILame'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ungacy' => 'ungacy@126.com' }
  s.source           = { :git => 'git@git.superid.cn:iOS/SILame.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.ios.vendored_frameworks = 'Release/lame.framework'
  # s.subspec 'Debug' do |ss|
  #   ss.ios.vendored_frameworks = 'Release-iphonesimulator/lame.framework'
  # end
  #
  # s.subspec 'Release' do |ss|
  #   ss.ios.vendored_frameworks = 'Release-iphoneos/lame.framework'
  # end
  
end
