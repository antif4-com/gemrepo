require "rubygems"
require "geminabox"

Geminabox.data = "/var/gem-storage"

use Rack::Session::Pool, expire_after: 1000
use Rack::Protection

server = run Geminabox::Server