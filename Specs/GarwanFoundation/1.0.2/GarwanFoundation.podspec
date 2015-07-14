
Pod::Spec.new do |s|

  s.name         = "GarwanFoundation"
  s.version      = "1.0.2"
  s.summary      = "Garwan Foundation Framework"

  s.homepage     = "https://github.com/garwan/garwan-ios-foundation"

  s.license      =   { :type => 'MIT'}

  s.author             = { "Martin Ulianko" => "martin@ulianko.com" }
  s.social_media_url = "http://twitter.com/MartinUlianko"


  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/garwan/garwan-ios-foundation.git", :tag => "1.0.2"}

  s.requires_arc     = true

  s.subspec 'ViewModel' do |ss|
    ss.source_files = 'ViewModel/*.{h,m}'
    ss.dependency 'ReactiveCocoa'
    ss.dependency 'ReactiveViewModel'
  end

  s.subspec 'Model' do |ss|
    ss.source_files = 'Model/*.{h,m}'
    ss.dependency 'Mantle'
    ss.dependency 'MTLManagedObjectAdapter'
    ss.dependency 'DOSingleton'
    ss.dependency 'KeychainItemWrapper'
  end

  s.subspec 'Managers' do |ss|
    ss.source_files = 'Managers/*.{h,m}'
    ss.dependency 'KeychainItemWrapper'
    ss.dependency 'DOSingleton'
  end

  s.subspec 'Networking' do |ss|
    ss.source_files = 'Networking/*.{h,m}'
    ss.dependency 'KeychainItemWrapper'
    ss.dependency 'DOSingleton'
    ss.dependency 'AFNetworking', '~> 2.0'
    ss.dependency 'AFOAuth2Manager'
    ss.dependency 'AFNetworkActivityLogger'
  end

  s.subspec 'Categories' do |ss|
    ss.source_files = 'Categories/*.{h,m}'
  end

  s.subspec 'Supporting Files' do |ss|
    ss.source_files = 'Supporting Files/*.{h,m}'
  end
end
