class UsersController < ApplicationController
   before_action :authenticate_user!, except: [:show]

   def show
      @user = User.find(params[:id])
      @items = @user.items
      @new_item = Item.new
   end
 
   private
 
   def user_params
     params.require(:user).permit(:name, :avatar)
   end
 end