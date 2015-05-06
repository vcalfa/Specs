
Pod::Spec.new do |s|

  s.name         = "GarwanFoundation"
  s.version      = "1.0.0"
  s.summary      = "Garwan Foundation Framework"

  s.homepage     = "https://github.com/Ulianko/GarwanFoundation"

  s.license      =   { :type => 'LICENSE'}


  s.author             = { "Martin Ulianko" => "martin@ulianko.com" }
  s.social_media_url = "http://twitter.com/MartinUlianko"


  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/Ulianko/GarwanFoundation", :tag => "1.0.0"}

  s.source_files     = 'Model/*.{h,m}'
  s.source_files     = 'ViewModel/*.{h,m}'
  s.requires_arc     = true

  s.dependency 'AFNetworking', '~> 2.0'
  s.dependency 'Mantle'
  s.dependency 'ReactiveCocoa'
  s.dependency 'ReactiveViewModel'
  s.dependency 'MagicalRecord'
  s.dependency 'DOSingleton'
  s.dependency 'AFNetworkActivityLogger'
  s.dependency 'KeychainItemWrapper'
  s.dependency 'GROAuth2SessionManager'

end
