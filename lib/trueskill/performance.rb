module Trueskill
  class Performance
    attr_accessor :player, :score
    def initialize(params)
      @player = params[:player]
      @score = params[:score]
    end
  end
end
