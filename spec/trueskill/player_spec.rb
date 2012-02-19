require 'spec_helper'

describe "Trueskill::Player" do
  describe "mu" do
    let(:player) do
      Trueskill::Player.new(id: "Al", mu: 25.0)
    end
    it "should let you set it on init" do
      player.mu.should == 25.0
    end
    it "should let you set it on an existing instance" do
      player.mu = 20.0
      player.mu.should == 20.0
    end
  end

  describe "sigma" do
    let(:player) do
      Trueskill::Player.new(id: "Al", sigma: 25.0)
    end
    it "should let you set it on init" do
      player.sigma.should == 25.0
    end
    it "should let you set it on an existing instance" do
      player.sigma = 3.0
      player.sigma.should == 3.0
    end
  end

  describe "id" do
    let(:player) { Trueskill::Player.new(id: "Al") }
    it "should take the id at init" do
      player.id.should == "Al"
    end
    it "should let you change the id" do
      player.id = "Alan"
      player.id.should == "Alan"
    end
  end

  describe "helper methods" do
    let(:player) do
      Trueskill::Player.new(id: "Al", mu: 3.0, sigma: 2.0)
    end
    it "should respond to pi" do
      player.should respond_to(:pi)
    end
    it "should calculate precision (pi)" do
      player.pi.should_not be_nil
    end
    it "should respond to tau" do
      player.should respond_to(:tau)
    end
    it "should calculate the precision mean (tau)" do
      player.tau.should_not be_nil
    end
  end
end
