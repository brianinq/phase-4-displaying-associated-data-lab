class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: user, only: [:id, :username, :city], include: {items: {only: [:id, :name, :description, :price]}}
    end
end
