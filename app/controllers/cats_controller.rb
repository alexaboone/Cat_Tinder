class CatsController < ApplicationController
  def index
    cats = Cat.all
    render json: cats
  end

  def create
    cat = Cat.create(cat_params)
    render json: cat
  end

  def cat_params
    params.require(:cat).permit(:name, :age, :city, :enjoys)
  end
end
