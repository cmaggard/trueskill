module Trueskill
  class League
    def initialize(params = {})
      @mu = params[:mu] || 25.0
      @sigma = params[:sigma] || @mu / 3.0
    end

    def mu
      @mu
    end

    def sigma
      @sigma
    end

    def beta
      sigma / 2.0
    end

    def tau
      sigma / 100.0
    end
  end
end
