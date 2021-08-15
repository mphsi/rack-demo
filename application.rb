class Application
  def call(env)
    body = '<h1>Welcome to my first Rack Application!</h1>' \
           '<p>Rack is easy to learn</p>'

    [200, { 'Content-Type' => 'text/html' }, [body]]
  end
end
