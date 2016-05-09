
module Api::V1
  class FizzbuzzapiController < ApplicationController
    include FizzBuzz

    # POST /v1/events
    def create
      render json: params.to_json
    end

  end
end