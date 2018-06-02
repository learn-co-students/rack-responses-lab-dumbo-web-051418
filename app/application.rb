class Application

  def call(env)
    resp = Rack::Response.new
    h = Time.now.strftime("%H")
    resp.write h < "12" ?  "Morning" : "Afternoon"

    resp.finish
  end

end
