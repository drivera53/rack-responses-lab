class Application

    def call(env)
      resp = Rack::Response.new
  
      hour_now = Time.now
  
      if hour_now.hour < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
  
      resp.finish
    end
  
end

# To run the server: rackup config.ru
# In browser http://localhost:9292