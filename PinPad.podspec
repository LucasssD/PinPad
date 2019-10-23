#
# Be sure to run `pod lib lint PinPad.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PinPad'
  s.version          = '0.1.0'
  s.summary          = 'UI component of PinPad.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
UI component of PinPad. Easy to use and embed in any view or controller.
                       DESC

  s.homepage         = 'https://github.com/LucasssD/PinPad'
  s.screenshots      = 'https://raw.githubusercontent.com/LucasssD/PinPad/master/Screenshot1.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Łukasz Duda' => 'lucasss.duda@gmail.com' }
  s.source           = { :git => 'https://github.com/LucasssD/PinPad.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'PinPad/Classes/**/*'
  
  s.swift_versions = '5.0'
  
  # s.resource_bundles = {
  #   'PinPad' => ['PinPad/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
