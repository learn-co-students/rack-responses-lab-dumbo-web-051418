require 'date'

class Application

  def call(env)
    resp = Rack::Response.new
    time=Time.now.strftime("%d/%m/%Y %H:%M")
    time=time[10..12].to_i
    if time<12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
