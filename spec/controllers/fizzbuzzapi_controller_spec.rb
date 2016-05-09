require 'rails_helper'

feature "get/post/delete to favorites api path" do
  describe Api::V1::FizzbuzzapiController, :type => :controller do
    render_views

    let(:json) { JSON.parse(response.body) }

    before do
      get :index, format: :json
    end
    context 'all fizzbuzz' do
      it 'returns the fizzbuzz' do
        expect(json.collect{|l| l[0]}).to include(100)
      end
    end
  end
end