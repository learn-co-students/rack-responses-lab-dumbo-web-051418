class Application

  def call(env) #initiate call
    resp = Rack::Response.new #creating a new responce instance
    time = Time.now
    if time.hour >= 12  #is the HOUR greater than or equal to 12?
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end
end
