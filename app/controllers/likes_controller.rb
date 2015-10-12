class LikesController < ApplicationController

  def create
    @image = Image.find(params[:review_id])
    @image.likes.create
    render json: {new_like_count: @image.likes.count}
  end

end
