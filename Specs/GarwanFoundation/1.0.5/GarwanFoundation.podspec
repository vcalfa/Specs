
Pod::Spec.new do |s|

  s.name         = "GarwanFoundation"
  s.version      = "1.0.5"
  s.summary      = "Garwan Foundation Framework"

  s.homepage     = "https://github.com/garwan/garwan-ios-foundation"

  s.license      =   { :type => 'MIT'}

  s.author             = { "Robert Sabol" => "robert.sabol23@gmail.com" }
  s.social_media_url = "http://twitter.com/robos23"


  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/garwan/garwan-ios-foundation.git", :tag => "1.0.5"}

  s.requires_arc     = true

  s.subspec 'ViewModel' do |ss|
    ss.source_files = 'ViewModel/*.{h,m}'
    ss.dependency 'ReactiveCocoa', '~> 3.0'
    ss.dependency 'ReactiveViewModel'
  end

  s.subspec 'Model' do |ss|
    ss.source_files = 'Model/*.{h,m}'
    ss.dependency 'Mantle', '~> 2.0.5'
    ss.dependency 'MTLManagedObjectAdapter', '~> 1.0'
    ss.dependency 'DOSingleton', '~> 0.1.0'
    ss.dependency 'KeychainItemWrapper', '~> 1.2'
  end

  s.subspec 'Managers' do |ss|
    ss.source_files = 'Managers/*.{h,m}'
    ss.dependency 'KeychainItemWrapper', '~> 1.2'
    ss.dependency 'DOSingleton', '~> 0.1.0'
  end

  s.subspec 'Networking' do |ss|
    ss.source_files = 'Networking/*.{h,m}'
    ss.dependency 'KeychainItemWrapper', '~> 1.2'
    ss.dependency 'DOSingleton', '~> 0.1.0'
    ss.dependency 'AFNetworking', '~> 2.0'
    ss.dependency 'AFOAuth2Manager', '~> 2.2.0'
    ss.dependency 'AFNetworkActivityLogger', '~> 2.0.4'
  end

  s.subspec 'Categories' do |ss|
    ss.source_files = 'Categories/*.{h,m}'
  end

  s.subspec 'Supporting Files' do |ss|
    ss.source_files = 'Supporting Files/*.{h,m}'
  end
end
