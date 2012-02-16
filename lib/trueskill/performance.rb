module Trueskill
  class Performance
    attr_accessor :player, :score
    def initialize(params)
      raise ArgumentError unless params[:player]
      raise ArgumentError unless params[:score]
      @player = params[:player]
      @score = params[:score]
    end
  end
end
