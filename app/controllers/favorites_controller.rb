class FavoritesController < ApplicationController
  before_action :set_favorite, only: :destroy
  
  # POST /favorites
  # POST /favorites.json
  def create
    favorite= params[:favorite_id]
    @favorite=Favorite.new(number: favorite)
    respond_to do |format|
      if @favorite.save
        format.html { redirect_to :back, notice: 'Favorite was successfully created.' }
        format.json { render :show, status: :created, location: @favorite }
      else
        format.html { render :new }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Favorite was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
  
  def set_favorite
    @favorite = Favorite.find_by_number(params[:favorite_id])
  end


end
