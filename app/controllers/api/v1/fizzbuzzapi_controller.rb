
module Api::V1
  class FizzbuzzapiController < ApplicationController

  #FIXME remove duplication
  
  include FizzBuzz

  # POST /v1/events
  def create
    render json: params.to_json
  end

  DEF_MIN = 1
  DEF_MAX = 100
  MAX=100_000_000_000
  def index
    #Allow parameters ?max=100&min=1&per_page=10
    max = params[:max]; min = params[:min]
    #set defaults
    # set it here instead of creating a class and attr_accessor
    min ||= DEF_MIN;   max ||= DEF_MAX
    max=MAX if max.to_i>MAX 
    range = min.to_i..max.to_i

    #calculate fizzbuzz over the range
    #make a hash where the number is the key and fizzbuzz is the value
    #fizzbuzz = range.map{|n| fizzbuzz(n)}
    fizz_hash={}
    range.each{|n| fizz_hash[n] = fizzbuzz(n)}

    render json: fizz_hash.to_json
  end


  end
end