require 'spec_helper'

describe "Trueskill::Performance" do
  let(:performance) do
    @player = mock(Trueskill::Player)
    Trueskill::Performance.new(player: @player,
                               score: 25)
  end
  it "should let you get the player" do
    performance.player.should == @player
  end
  it "should let you get the score" do
    performance.score.should == 25
  end
end
