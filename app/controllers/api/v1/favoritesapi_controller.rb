
module Api::V1
  class FavoritesapiController < ApplicationController
    def index
      @favorites=Favorite.all
      if @favorites
        render json: {}, status: 200
      else
        render json: {error: "Favorite could not be deleted."}, status: 422
      end
    end
    # POST /favorites.json
    def create
      favorite= params[:favorite_id]
      @favorite=Favorite.new(number: favorite)
      respond_to do |format|
        if @favorite.save
          format.json { render json: {}, status: 200}
        else
          format.json { render json: @favorite.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /favorites/1.json
    def destroy
      @favorite = Favorite.find_by_number(params[:id])
      if !@favorite.nil? && @favorite.destroy 
        render json: {}, status: 200
        # Rails is told explicitly what to render
      else
        render json: {error: "Favorite could not be deleted."}, status: 422
      end
    end

  end
end



