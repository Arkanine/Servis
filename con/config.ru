require './my_app'
require './middleware'
require './my_sinatra'
run Sinatra::Application

use Rack::Reloader
use MyRackMiddleware
run MyApp.new