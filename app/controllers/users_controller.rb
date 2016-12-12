class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    render("users/show.html.erb")
  end

  def new
    @user = User.new

    render("users/new.html.erb")
  end

  def create
    @user = User.new

    save_status = @user.save

      if save_status == true
        redirect_to("/injuries/new")
      else
        render("users/new.html.erb")
      end
  end

end
