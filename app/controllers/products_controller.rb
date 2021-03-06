class ProductsController < ApplicationController
  # before_action :except => [:landing] do
  #   flash[:notice] = "Please create an account." unless current_user
  #   redirect_to signup_path unless current_user
  # end
  #
  # before_action :except => [:show, :index, :landing] do
  #   flash[:notice] = "Admin privilages required!" unless is_admin?
  #   redirect_to signin_path unless is_admin?
  # end


  def landing
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
    flash[:notice] = "Product successfully added!"
      redirect_to  products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Product successfully removed!"
      redirect_to products_path
    end
  end

private
  def product_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:product).permit(:name, :cost, :origin, :description)
  end
end
