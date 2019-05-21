class OpenWeatherClient
    require 'net/http'
    APPID = ENV["APPID"]
    
    def self.search(city)
        response = RestClient::Request.execute(
        method: :get,
        url: 'https://api.openweathermap.org/data/2.5/weather?q='+city+'&appid='+APPID,
        headers: {content_type: :json, accept: :json}
        )
        return response
    end

end