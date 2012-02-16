require 'spec_helper'

describe "Trueskill::Performance" do
  let(:performance) do
    Trueskill::Performance.new(player: "a",
                               score: 25)
  end
  it "should require a player" do
    lambda { 
      perf = Trueskill::Performance.new(score: 25)
    }.should raise_error(ArgumentError)
  end
  it "should require a score" do
    lambda {
      perf = Trueskill::Performance.new(player: "a")
    }.should raise_error(ArgumentError)
  end
  it "should let you get the player" do
    performance.player.should == "a"
  end
  it "should let you get the score" do
    performance.score.should == 25
  end
end
