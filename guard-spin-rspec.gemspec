# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "guard-spin-rspec"
  gem.version       = '0.0.1'
  gem.authors       = ["Tiago Lupepic"]
  gem.email         = ["tiagolpc@gmail.com"]
  gem.description   = %q{Push watched rspec files to Spin}
  gem.summary       = %q{Push watched rspec files to Spin}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
