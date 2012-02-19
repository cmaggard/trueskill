require 'spec_helper'

describe 'Trueskill::League' do
  subject {Trueskill::League.new()}
  it "should have a default mu" do
    subject.mu.should_not be_nil
  end
  it "should have a default sigma" do
    subject.sigma.should_not be_nil
  end
  it "should have a default beta" do
    subject.beta.should_not be_nil
  end
  it "should have a default tau" do
    subject.tau.should_not be_nil
  end

  it "should let you set your own mu" do
    league = Trueskill::League.new(mu: 3.0)
    league.mu.should == 3.0
  end

  it "should let you set your own sigma" do
    league = Trueskill::League.new(sigma: 3.0)
    league.sigma.should == 3.0
  end
end
