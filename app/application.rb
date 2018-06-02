class Application
  def call(env)
    resp = Rack::Response.new
    now = Time.now
    noon = Time.new(2015,11,27,12)
    # noon = Time.new(2016,6,2,12)
    # morning = Time.new(2016,6,2,0)
    # resp.write now
    if now >= noon
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end
