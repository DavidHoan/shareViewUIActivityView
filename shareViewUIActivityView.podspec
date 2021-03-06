#
# Be sure to run `pod lib lint shareViewUIActivityView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'shareViewUIActivityView'
s.version          = '0.1.0'
s.summary          = 'shareViewUIActivityView description.'


s.homepage         = 'https://github.com/DavidHoan/shareViewUIActivityView'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'DavidHoan' => 'mr.donghq@gmail.com' }
s.source           = { :git => 'https://github.com/DavidHoan/shareViewUIActivityView.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '8.0'

s.source_files = 'shareViewUIActivityView/Classes/**/*'

s.resource_bundles = {
'shareViewUIActivityView' => ['shareViewUIActivityView/Assets/*.png']
}

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end
