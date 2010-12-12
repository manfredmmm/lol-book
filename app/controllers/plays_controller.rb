class PlaysController < ApplicationController
  def index
  end

  def new
    @play = Play.new
    @champions = Champion.all
    @items = Item.all
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
