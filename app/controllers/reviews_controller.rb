class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create review_params
    @review.author = current_user.name
    if @review.save
      flash[:notice] = "Your review was successfully posted."
      respond_to do |format|
        format.html { redirect_to (request.env['HTTP_REFERER']) }
        format.js
      end
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end

  def update
    @product = Product.find(params[:product_id])
    @review= Review.find(params[:id])
    if @review.update(review_params)
      respond_to do |format|
        format.html { redirect_to (request.env['HTTP_REFERER']) }
        format.js
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      flash[:notice] = "Review successfully removed!"
      respond_to do |format|
        format.html { redirect_to (request.env['HTTP_REFERER']) }
        format.js
      end
    end
  end

  private
    def review_params
      params.require(:review).permit(:body)
    end
end
