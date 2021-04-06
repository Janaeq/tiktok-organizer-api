class VideosController < ApplicationController
    def index
        videos = Video.all 
        render json: videos, except: [:created_at, :updated_at]
    end

    def new
        # use api response to get embedded json
        # implement this before testing out in JS
    end

    def create 
        # use api response to get embedded json
        # implement this before testing out in JS
    end

    def show
        video = Video.find_by(id: params[:id])
        if video
            render json: video, except: [:created_at, :updated_at]
        else
            render json: {message: 'video does not exist'}
        end
    end

    def delete
        # delete the video that we don't want
    end

    # private

    # def request_api(url)
        # maybe need to make request to tiktok API to convert the short URL 
        # provided by the user into the long URL required to embed content
    # end
end
