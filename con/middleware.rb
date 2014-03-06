
class MyRackMiddleware
  def initialize(appl)
    @appl = appl
  end
  def call(env)
    status, headers, body = @appl.call(env)
    append_s = "... one greetings from RubyLearning!!"
    [status, headers, body << append_s]
  end
end