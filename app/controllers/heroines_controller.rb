class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new 
    @heroine = Heroine.new
    @powers = Power.all
  end 

  def create
    @heroine = Heroine.create({
      name: params[:heroine][:name],
      super_name: params[:heroine][:super_name],
      power_id: params[:heroine][:power],
    })
    redirect_to "/heroines/#{@heroine.id}"
  end 

  def show
    @heroine = Heroine.find(params[:id])
  end


end
