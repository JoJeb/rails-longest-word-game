class GameController < ApplicationController
  def play
    @letters = Array.new(10) { ('A'..'Z').to_a[rand(26)] }
    @start_time = Time.now.to_i
  end

  def score
    @answer = params['answer']
    @start_time = params['start_time'].to_i
    @end_time = Time.now.to_i
    @time_taken = @end_time - @start_time
    @score = @answer.length * 100 * (1 / @time_taken.to_f)
  end
end
