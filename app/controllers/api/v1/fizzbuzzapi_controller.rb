
module Api::V1
  class FizzbuzzapiController < ApplicationController
    respond_to :json
    # POST /v1/events
    def create
      render json: params.to_json
    end
    def index
      @widgets =["hello"]
      render json:  @widgets.to_json
    end

  end
end