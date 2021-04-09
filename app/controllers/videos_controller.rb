class VideosController < ApplicationController
    def index
        videos = Video.all 
        render json: videos, except: [:created_at, :updated_at]
    end

    def create 
        video = Video.new(video_params)
        video.thumbnail_url = self.get_thumbnail(params[:video][:url])
        video.embed_html = self.get_embedded_html(params[:video][:url])
        video.save
        if video.save
            render json: video, except: [:create, :updated_at]
        else
            render json: {message: video.errors.full_messages.to_sentence}
        end
    end

    def show
        video = Video.find_by(id: params[:id])
        if video.save
            render json: video, except: [:created_at, :updated_at]
        else
            render json: {message: 'Video does not exist'}
        end
    end

    def destroy
        video = Video.find_by(id: params[:id])
        video.delete
        render json: {message: 'Successfully Deleted'}
    end

    private

    def video_params
        params.require(:video).permit(:url, :category_id)
    end
end
