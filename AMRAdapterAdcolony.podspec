Pod::Spec.new do |s|
  s.name             = 'AMRAdapterAdcolony'
  s.version          = '4.7.1.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Adcolony adapter for AMR SDK.'
  s.description      = 'AMR Adcolony adapter allows publishers to mediate Adcolony banner and interstitial ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-ADCOLONY.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.vendored_libraries = 'AMRAdapterAdcolony/Libs/libAMRAdapterAdcolony.a'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.dependency 'AMRSDK', '~> 1.4.75'
  s.dependency 'AdColony', '4.7.1'
end
