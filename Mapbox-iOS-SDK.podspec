Pod::Spec.new do |m|

  m.name    = 'Mapbox-iOS-SDK'
  m.version = '1.6.1'

  m.summary          = 'An open source toolset for building mapping applications for iOS devices.'
  m.description      = 'An open source toolset for building mapping applications for iOS devices with great flexibility for visual styling, offline use, and customizability.'
  m.homepage         = 'https://mapbox.com/mapbox-ios-sdk-legacy'
  m.license          = 'BSD'
  m.author           = { 'Mapbox' => 'mobile@mapbox.com' }
  m.screenshot       = 'https://raw.github.com/mapbox/mapbox-ios-sdk-legacy/packaging/screenshot.png'
  m.social_media_url = 'https://twitter.com/Mapbox'

  m.source = {
    :git => 'https://github.com/mapbox/mapbox-ios-sdk-legacy.git',
    :tag => m.version.to_s
  }

  m.platform              = :ios
  m.ios.deployment_target = '5.0'
  m.requires_arc          = true

  m.module_name = 'Mapbox_iOS_SDK'

  m.source_files = 'MapView/Map/*.{h,c,m}'

  m.prefix_header_file = 'MapView/MapView_Prefix.pch'

  m.public_header_files = [
    'MapView/Map/*.h'
  ]

  m.resource_bundle = {
    'Mapbox' => 'MapView/Map/Resources/*'
  }

  m.documentation_url = 'https://www.mapbox.com/mapbox-ios-sdk-legacy'

  m.frameworks = 'CoreGraphics', 'CoreLocation', 'Foundation', 'QuartzCore', 'UIKit'

  m.libraries = 'sqlite3', 'z'

  m.xcconfig = {
    'OTHER_LDFLAGS'        => '-ObjC',
  }

  m.preserve_paths = 'MapView/MapView.xcodeproj', 'MapView/Map/Resources'


  m.dependency 'FMDB', '2.3'
  m.dependency 'GRMustache', '7.3.0'
  m.dependency 'SMCalloutView', '2.0'
  m.dependency 'proj4', '4.8.0'

end
