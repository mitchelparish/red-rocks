lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "red-rocks"
  spec.version       = '0.2.0'

  spec.authors       = ["mitchelparish"]
  spec.email         = ["mitchelparish@gmail.com"]

  spec.summary       = %q{Real-time Concert Information for Red Rocks.}
  spec.description   = %q{Simple web scraper gem that returns the next show at Red Rocks.}
  spec.homepage      = "https://github.com/mitchelparish/red-rocks"
  spec.license       = "MIT"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
                        `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
                       end

  spec.executables   = ["red-rocks"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
