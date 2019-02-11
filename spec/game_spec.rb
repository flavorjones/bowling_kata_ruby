require "game"

describe Game do
  context "with 20 gutters" do
    it "should score zero"
  end

  context "with 20 ones" do
    it "should score 20"
  end

  context "with 1 spare" do
    it "should add the next roll to this frame"
  end

  context "with a strike" do
    it "should add the next two rolls to this frame"
  end

  context "with all strikes" do
    it "should score a perfect game of 300"
  end
end
