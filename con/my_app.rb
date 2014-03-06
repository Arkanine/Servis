# my_app.rb
class MyApp
  def call(env)

    [200, {"Content-Type" => "text/html"}, ["Hellow from across the globe"]]
  end
end
