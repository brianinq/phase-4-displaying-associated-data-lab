class ItemsController < ApplicationController
    def index
       items = Item.all
       render json: items, only:[:id, :name, :description, :price], include: {user: {only: [:id, :username, :city]}}
    end
end
