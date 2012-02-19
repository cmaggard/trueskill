module Trueskill
  class Player
    attr_accessor :mu, :sigma, :id

    def initialize(params = {})
      @id = params[:id]
      @mu = params[:mu] 
      @sigma = params[:sigma]
    end

    def pi
      1.0 / (@sigma ** 2)
    end

    def tau
      @mu * pi
    end
  end
end
