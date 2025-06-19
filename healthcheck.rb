
class HealthCheck
  def call(env)
    if env['PATH_INFO'] == '/up'
      [200, {'Content-Type' => 'text/plain'}, ['We good here homedog.']]
    else
      [404, {'Content-Type' => 'text/plain'}, ['Nope, not found.']]
    end
  end
end
