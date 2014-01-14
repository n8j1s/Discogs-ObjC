#
# Be sure to run `pod spec lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "Discogs-ObjC"
  s.version      = "0.1.0"
  s.summary      = "An Objective C client for the Discogs v 2.0 API."
  s.description  = <<-DESC
                    An Objective C client for the Discogs v 2.0 API.
                   DESC
  s.homepage     = "http://github.com/n8j1s/Discogs-ObjC"
  s.license      = 'MIT'
  s.author       = { "Nathaniel Jones" => "nathaniel.jones@gmail.com" }
  s.source       = { :git => "https://github.com/n8j1s/Discogs-ObjC.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.source_files = 'Discogs-ObjC/*.{m,h}'
  s.dependency 'DCKeyValueObjectMapping', '~>1.4'
  s.dependency 'AFNetworking', '~>2.0'
end
