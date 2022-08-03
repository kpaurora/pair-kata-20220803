require "./kata"

RSpec.describe Kata do
  describe "doing something" do
    it "does a thing" do
      kata = Kata.new
      expect(kata.do_something(10)).to eq(20)
    end
  end
end
