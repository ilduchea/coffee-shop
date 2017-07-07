class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create review_params
    @review.save
    redirect_to (request.env['HTTP_REFERER']), notice: "Your review was successfully posted."
  end

  private
    def review_params
      params.require(:review).permit(:author, :body)
    end
end
