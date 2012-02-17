module Trueskill
  class Performance
    attr_accessor :player, :score
    def initialize(params)
      @player = params[:player]
      @score = params[:score]
    end

    def mu
      @player.mu
    end
    def sigma
      @player.sigma
    end
  end
end
