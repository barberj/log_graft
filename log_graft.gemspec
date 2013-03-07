$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "log_graft"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Justin Barber"]
  s.email       = ["justin.barber@kevy.com"]
  s.homepage    = "http://kevy.com"
  s.summary     = "include default logging to objects"
  s.description = "include default logging to objects"

  s.files        = Dir.glob("{lib}/*")
  s.require_path = 'lib'

  s.add_dependency 'logger'
end
