class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create review_params
    @review.author = current_user.name
    if @review.save
      flash[:notice] = "Your review was successfully posted."
      redirect_to (request.env['HTTP_REFERER'])
    end

  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      flash[:notice] = "Review successfully removed!"
      redirect_to request.env['HTTP_REFERER']
    end
  end

  private
    def review_params
      params.require(:review).permit(:body)
    end
end
