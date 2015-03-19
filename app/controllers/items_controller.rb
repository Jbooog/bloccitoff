class ItemsController < ApplicationController
  
  def new 
    @items = Item.new
  
  def create 
    @items = current_user.items.build
    authorize @items
    if @items.save
      redirect_to items_path, notice: 'Your item has been saved.'
    else
      flash[:error] = 'There was an error saving your item.'
      render :new
    end
  end

end
