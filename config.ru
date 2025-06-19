require 'rubygems'
require 'geminabox'

require './healthcheck'

Geminabox.data = '/var/gem-storage'

use Rack::Session::Pool, expire_after: 1000
use Rack::Protection

run Rack::Cascade.new([Geminabox::Server, HealthCheck.new])
