module Api
  module V1
    class PostsController < ApplicationController
      protect_from_forgery with: :null_session

      def create
        post = Post.new(post_params)

        if post.save
          render json: PostSerializer.new(post).serializable_hash.to_json
        else
          render json: { error: post.errors.messages }, status: 422
        end
      end

      def destroy
        post = Post.find_by(id: params[:id])

        if post.destroy
          head :no_content
        else
          render json: { error: post.errors.messages }, status: 422
        end
      end

      private

      def post_params
        params.require(:post).permit(:image, :caption, :user_id)
      end

    end
  end
end