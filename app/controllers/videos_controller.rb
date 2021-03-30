class VideosController < ApplicationController
    def index
        videos = Video.all 
        render json: videos, except: [:created_at, :updated_at]
    end

    def new
        # use api response to get embedded json
    end

    def create 
        # use api response to get embedded json
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
        
    # end
end
