require_relative 'application'

@app = Application.new

# Since defined inside of a ru file we can remove the Rack::<Server>::Thin part
# Rack::Handler::Thin.run @app Specifying
#
# Then the file can be called from the terminal with
# > rackup
# the filepath can be ommited as long as it's called the default, config.ru

# We can specify middleware using the use keyword.
# Rack::Reloader is one of Rack-provided ones.
use Rack::Reloader, 1 # It takes the secs for it to reload the app code.
# Other Middleware options exist, many open source ones as well.
# See https://github.com/rack/rack#available-middleware-shipped-with-rack-
# use Rack::Static, urls: ['/css', '/images'], root: 'public'

run @app
