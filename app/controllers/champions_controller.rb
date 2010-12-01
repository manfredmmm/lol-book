class ChampionsController < ApplicationController
  def index
    @champions = Champion.all
  end

  def show
    @champion = Champion.find(params[:id])
  end

  def new
    @champion = Champion.new
  end

  def create
    @champion = Champion.create(params[:champion])
    redirect_to champions_path
  end

  def edit
    @champion = Champion.find(params[:id])
  end

  def update
    @champion = Champion.find(params[:id])
    @champion.update_attributes(params[:champion])
    redirect_to champions_path
  end

  def destroy
    @champion = Champion.find(params[:id])
    @champion.destroy
    redirect_to champions_path
  end
end
