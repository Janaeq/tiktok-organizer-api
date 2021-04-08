require 'httparty'
class ApplicationController < ActionController::API
    include HTTParty
    @@uri = 'https://www.tiktok.com/oembed?url='

    def get_thumbnail(url)
        response = HTTParty.get(@@uri + url)
        json = JSON.parse(response.body)
        return json['thumbnail_url']
    end

    def get_embedded_html(url) 
        response = HTTParty.get(@@uri + url)
        json = JSON.parse(response.body)
        return json['html']
    end
end
