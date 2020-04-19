require_relative 'lib/stock_api_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "stock_api_wrapper"
  spec.version       = StockApiWrapper::VERSION
  spec.authors       = ["Patrick Moran"]
  spec.email         = ["x16102860@student.ncirl.ie"]
  spec.homepage      = ["https://rubygems.org/gems/stock_api_wrapper"]
  

  spec.summary       = %q{Gem to wrap alphavantage.com API}
  spec.description   = %q{Gem to wrap alphavantage.com API}
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.add_development_dependency "minitest"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_dependency "faraday"
  spec.add_dependency "json"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
