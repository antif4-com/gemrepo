
class HealthCheck
  def call(env)
    if env['PATH_INFO'] == '/up'
      [200, {'Content-Type' => 'text/plain'}, ['We good here homedog.']]
    else
      [500, {'Content-Type' => 'text/plain'}, ['Expected geminabox to 404 after this.']]
    end
  end
end
