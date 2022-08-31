require "./kata"

RSpec.describe Kata do

  describe "new" do
    it "supports custom pairs" do
      expect(Kata.new({
        "A" => "a",
        "B" => "b",
        "C" => "c"
      }).is_balanced_braces("aAbBcC")).to be true
    end
  end

  describe "is_balanced_braces" do

    it "returns false when leftover closing brack" do
      expect(Kata.new.is_balanced_braces(")")).to be false
    end

    it "returns true when passed in matching ()" do
      expect(Kata.new.is_balanced_braces("()")).to be true
    end

    it "returns false when passed just one (" do
      expect(Kata.new.is_balanced_braces("(")).to be false
    end

    it "returns true when passed in matching {}" do
      expect(Kata.new.is_balanced_braces("{}")).to be true
    end

    it "returns false when passed just one {" do
      expect(Kata.new.is_balanced_braces("{")).to be false
    end

    it "returns false when passed in not matching {)" do
      expect(Kata.new.is_balanced_braces("{)")).to be false
    end

    it "returns true when passed in matching []" do
      expect(Kata.new.is_balanced_braces("[]")).to be true
    end

    it "returns false when passed just one [" do
      expect(Kata.new.is_balanced_braces("[")).to be false
    end
    
    it "returns true for complicated but valid nesting" do
      expect(Kata.new.is_balanced_braces("(){[]}")).to be true
    end

    it "returns false for complicated but invalid nesting" do
      expect(Kata.new.is_balanced_braces("(){[)]}")).to be false
    end
    
    it "returns false for out order brackets" do
      expect(Kata.new.is_balanced_braces("([)]")).to be false
    end
    
    it "ignores non-bracket characters" do
      expect(Kata.new.is_balanced_braces("(IGNORE_THIS_STRING)")).to be true
    end
    
    it "returns true for empty string" do
      expect(Kata.new.is_balanced_braces("")).to be true
    end
  end
end