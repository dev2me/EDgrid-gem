# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'edgrid-sass/version'

Gem::Specification.new do |s|
	s.name = 'edgrid-sass'
	s.version = Edgrid::Sass::VERSION
	s.authors = ["Jesus Rosas"]
	s.email = ["jesus@ecotechnologic.com.mx"]
	s.summary = %q{EDgrid Sass for Ruby On Rails}
	s.description = %{Use Edgrid in yout rails asset pipeline}
	s.homepage = "https://github.com/dev2me/edgrid-sass"
	s.license = 'MIT'

	s.files = `git ls-files -z`.split("\x0")
	s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
	s.test_files = s.files.grep(%r{^(test|spec|features)/})
	s.require_paths = ["lib"]

	s.add_devlopment_dependency "bundler"
	s.add_devlopment_dependency "rake"

	s.add_dependency "sass"
end