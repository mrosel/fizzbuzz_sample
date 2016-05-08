class FizzbuzzController < ApplicationController
  include FizzBuzz

  DEF_MIN = 1
  DEF_MAX = 100
  MAX=100_000_000_000
  def index
    max = params[:max]; min = params[:min]
    per_page=params[:per_page]
    per_page||=100
    min ||= DEF_MIN;   max ||= DEF_MAX
    max=MAX if max.to_i>MAX 
    range = min.to_i..max.to_i
    fizzbuzz = range.map{|n| fizzbuzz(n)}
    @fizzbuzz = fizzbuzz.paginate(:page => params[:page], :per_page =>per_page.to_i)
  end

end
