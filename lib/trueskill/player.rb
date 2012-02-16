module Trueskill
  class Player
    attr_accessor :mu, :sigma, :id

    def initialize(params = {})
      raise ArgumentError unless params[:id]
      @id = params[:id]
      @mu = params[:mu] 
      @sigma = params[:sigma]
    end

    def pi
      1.0 / @sigma
    end

    def tau
      @mu * pi
    end
  end
end
