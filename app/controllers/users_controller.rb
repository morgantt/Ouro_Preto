class UsersController < ApplicationController

  def show

    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user =User.new
    @title = "Sign up"
  end
def create

   @user  = User.new(params[:user])
    if @user.save
      redirect_to @user, :flash => { :success => "Benvindo ao controle de propostas!" }
    else
     @title = "Sign up"
     render "new"
    end
  end
end

