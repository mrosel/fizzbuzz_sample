class FizzbuzzController < ApplicationController
  include FizzBuzz

  http_basic_authenticate_with name: "username", password: "password", except: :index

  DEF_MIN = 1
  DEF_MAX = 100
  MAX=1_000_000
  def index
    max = params[:max]; min = params[:min]
    min ||= DEF_MIN;   max ||= DEF_MAX
    max=MAX if max.to_i>MAX 
    range = min.to_i..max.to_i
    fizzbuzz = range.map{|n| fizzbuzz(n)}
    @fizzbuzz = fizzbuzz.paginate(:page => params[:page], :per_page =>100)
  end

end
