module Edgrid
	module Sass
		class Engine < ::Rails::Engine
			initializer 'edgrid-sass.assets.precompile' do |app|
				%w(stylesheets javascripts).each do |sub|
					app.config.assets.paths << root.join('app/assets', sub).to_s
				end
			end
		end
	end
end