require 'spec_helper'

describe "Trueskill::Performance" do
  let(:performance) do
    @player = mock(Trueskill::Player)
    @player.stub(:mu, 25.0)
    @player.stub(:sigma, 25/3.0)
    Trueskill::Performance.new(player: @player,
                               score: 25)
  end
  it "should let you get the player" do
    performance.player.should == @player
  end
  it "should let you get the score" do
    performance.score.should == 25
  end
  it "should request the player's mu" do
    performance.mu.should == @player.mu
  end
  it "should request the player's sigma" do
    performance.sigma.should == @player.sigma
  end
end
