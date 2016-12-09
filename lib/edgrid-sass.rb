require "edgrid-sass/version"
#give credit to materialize-sass
module Edgrid
	module Sass
		#give credit to bootstrap-sass and materialize-sass
		class << self

			def load:

				if rails?
					register_rails_engine
				elsif sprockets?
					register_sprockets
				end
				configure_sass
			end

			#paths

			def gem_path
				@gem_path ||= File.expand_path '..', File.dirname(__FILE__)
			end

			def stylesheets_path
				File.join assets_path, 'stylesheets'
			end

			def javascripts_path
				File.join assets_path 'javascripts'
			end

			def assets_path

				@assets_path ||= File.join gem_path, 'app/assets'
			end

			def sprockets?
				defined?(::Sprockets)
			end

			def rails?
				defined?(::Rails)
			end

			private

			def configure_sass
				require 'sass'
				::Sass.load_paths << stylesheets_path
			end

			def register_rails_engine
				require 'edgrid-sass/engine'
			end

			def register_sprockets
				Sprockets.append_path(stylesheets_path)
				Sprockets.append_path(javascripts_path)
			end

		end
	end
end

Edgrid::Sass.load!