require 'rails_helper'

feature "get/post/delete to favorites api path" do
  describe Api::V1::FavoritesapiController, :type => :controller do

    before do
      get :index, format: :json
    end

    describe 'POST /favoritesapi.json' do
      context 'new favorite success' do
        before do
          post :create, format: :json, :favorite_id => 1
        end

        it 'creates a new favorite' do
          expect(Favorite.last.number).to eq(1)
        end
      end
    end
    describe 'DELETE /favoritesapi.json' do
      context 'delete favorite success' do

        it 'creates a favorite then deletes it' do
          post :create, format: :json, :favorite_id => 1
          expect(Favorite.where(number: 1)).to exist
          delete :destroy, format: :json, :id => 1
          expect(Favorite.where(number: 1)).to be_empty

        end        
      end
    end

  end
end

