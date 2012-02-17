module Trueskill
  module Math
    # Complimentary error function
    def Math.erfcc(x)
      z = x.abs
      t = 1.0 / (1.0 + z / 2.0)
      r = t * ::Math.exp(-z * z - 1.26551223 + \
          t * (1.00002368 + t * (0.37409196 + t * (0.09678418 + \
          t * (-0.18628806 + t * (0.27886807 + t * (-1.13520398 + \
          t * (1.48851587 + t * (-0.82215223 + t * (0.17087277))))))))))
      (x < 0 ? 2.0 - r : r).round(7)
    end

    # inverse erfcc
    def Math.ierfcc(y)
      return -100 if y >= 2
      return 100 if y <= 0
      y = 2 - y unless y < 1
      t = ::Math.sqrt(-2 * ::Math.log(y / 2.0))
      x = -0.70711 * \
          (( 2.30753 + t * 0.27061) / (1.0 + t * (0.99229 + t * 0.04481)) - t)
      2.times do
        err = erfcc(x) - y
        x += err / (1.12837916709551257 * ::Math.exp(-(x ** 2)) - x * err)
      end
      y < 1 ? x : -x
    end

    # Cumulative distribution function
    def Math.cdf(x)
      1 - 0.5 * erfcc(x / ::Math.sqrt(2))
    end

    def Math.pdf(x)
      (1 / ::Math.sqrt(2 * Math::PI)) * ::Math.exp(-(x ** 2 / 2))
    end

    # Inverse cdf
    def Math.ppf(x)
      - ::Math.sqrt(2) * ierfcc(2*x)
    end

    def Math.gaussian(x, mu, sigma)
      1.0 / (::Math.sqrt(2*::Math::PI)*::Math.sqrt(sigma))\
      * ::Math.exp(- 1.0 / (2.0*sigma) * (x - mu)**2)
    end
  end
end

