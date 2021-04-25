module Api
  module V1
    class LikesController < ApplicationController
      protect_from_forgery with: :null_session

      def create
        if Like.exists?(user_id: params[:user_id])
          render json: { error: "already liked" }, status: 422
        else
          like = Like.new(like_params)

          if like.save
            render json: LikeSerializer.new(like).serializable_hash.to_json
          else
            render json: { error: like.errors.messages }, status: 422
          end
        end
      end

      def destroy
        like = Like.find_by(id: params[:id])

        if like.destroy
          head :no_content
        else
          render json: { error: like.errors.messages }, status: 422
        end
      end

      private

      def like_params
        params.require(:like).permit(:user_id, :post_id)
      end
    end
  end
end
