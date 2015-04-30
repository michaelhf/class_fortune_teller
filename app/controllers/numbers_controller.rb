class NumbersController < ApplicationController
  def lucky_numbers
    @first_number = rand(100)
    @second_number = rand(100)
    @third_number = rand(100)
    @fourth_number = rand(100)
    @fifth_number = rand(100)
  end

  def unlucky_numbers
    @numbers = [rand(1..100), rand(1..100), rand(1..100), rand(1..100), rand(1..100)]
  end
  def random_numbers
   number = params["num"].to_i || 1000
   # number =  params["num"].present? ? params["num"].to_i : 1000
   number = params.fetch(:num,1000).to_i
    # raise number.inspect
    @the_number = rand(number)
  end
end
