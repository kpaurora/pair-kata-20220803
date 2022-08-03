require "./kata"

RSpec.describe Kata do
  describe "when an empty array is passed" do
    it "returns 0" do
      kata = Kata.new
      expect(kata.interval_sum([])).to eq(0)
    end
  end

  describe "when a single interval is passed" do
    it "returns length of that interval" do
      kata = Kata.new
      expect(kata.interval_sum([[-1, 5]])).to eq(6)
    end
  end

  describe "when three non-overlapping intervals are passed" do
    it "returns sum of lengths" do
      kata = Kata.new
      expect(kata.interval_sum([[-1, 5], [5, 6], [9, 20]])).to eq(18)
    end
  end

  describe "when two overlapping intervals are passed" do
    it "returns the length of the combined interval" do
      kata = Kata.new
      expect(kata.interval_sum([[-1, 5], [3, 7]])).to eq(8)
    end
  end

  describe "when mix of overlapping and non-overlapping intervals are passed" do
    it "returns the length of the combined intervals" do
      kata = Kata.new
      expect(kata.interval_sum([[-1, 5], [3, 7], [9, 10], [15, 20], [17, 18]])).to eq(14)
    end
  end

  describe "when interval with last element smaller than first is passed" do
    it "returns the length of the interval" do
      kata = Kata.new
      expect(kata.interval_sum([[5, -1]])).to eq(6)
    end
  end

  describe "when interval with real number bounds is passed" do
    it "returns the real number length of the interval" do
      kata = Kata.new
      expect(kata.interval_sum([[-0.5, 0.75]])).to eq(1.25)
    end
  end
end