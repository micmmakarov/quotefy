# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
env = Sprockets::Environment.new
require 'handlebars_assets'
env.append_path HandlebarsAssets.path
run QuoteBuilder::Application