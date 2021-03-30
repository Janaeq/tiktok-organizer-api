class VideosController < ApplicationController
    def index
        videos = Video.all 
        render json: videos, except: [:created_at, :updated_at]
    end

    def show
        video = Video.find_by(id: params[:id])
        if video
            render json: video, except: [:created_at, :updated_at]
        else
            render json: {message: 'video does not exist'}
        end
    end
end
