
Pod::Spec.new do |s|

  s.name         = "GarwanFoundation"
  s.version      = "1.0.0"
  s.summary      = "Garwan Foundation Framework"

  s.homepage     = "https://github.com/Ulianko/GarwanFoundation"

  s.license      =   { :type => 'MIT'}

  s.author             = { "Martin Ulianko" => "martin@ulianko.com" }
  s.social_media_url = "http://twitter.com/MartinUlianko"


  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/Ulianko/GarwanFoundation.git", :tag => "1.0.0"}

  s.requires_arc     = true

  s.subspec 'ViewModel' do |ss|
    ss.source_files = 'ViewModel/*.{h,m}'
    ss.dependency 'ReactiveCocoa'
    ss.dependency 'ReactiveViewModel'
  end

  s.subspec 'Model' do |ss|
    ss.source_files = 'Model/*.{h,m}'
    ss.dependency 'AFNetworking', '~> 2.0'
    ss.dependency 'Mantle'
    ss.dependency 'DOSingleton'
    ss.dependency 'GROAuth2SessionManager'
    ss.dependency 'AFNetworkActivityLogger'
    ss.dependency 'KeychainItemWrapper'
  end
end
