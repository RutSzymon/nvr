$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require File.expand_path('../version', __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nvr"
  s.version     = Nvr::VERSION
  s.authors     = ["Szymon Rut"]
  s.email       = ["rut.szymon@gmail.com"]
  s.homepage    = "https://github.com/RutSzymon/nvr"
  s.summary     = %q{ NIP validator }
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency "activemodel"

  s.add_development_dependency "debugger"
  s.add_development_dependency "rspec"
end
