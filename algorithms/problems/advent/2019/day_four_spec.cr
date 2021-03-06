require "spec"
require "./day_four"

describe "Day 4" do
  describe "brute_force" do
    it "returns valid number" do
      actual = brute_force(264793, 803935)
      actual.should eq(966)
    end
  end

  describe "valid?" do
    it "returns true for 111 111" do
      valid?(111_111).should eq(true)
    end

    it "covers decreasing digits 50" do
      valid?(223450).should eq(false)
    end

    it "covers case when missing double" do
      valid?(123789).should eq(false)
    end
  end

  describe "valid2?" do
    it "returns true for 112233" do
      valid2?(112233).should eq(true)
    end

    it "covers large group" do
      valid2?(123444).should eq(false)
    end

    it "covers case when large group and smaller exists" do
      valid2?(111122).should eq(true)
    end
  end

  describe "to_digits" do
    it "split single digit number" do
      to_digits(1).should eq([1])
    end

    it "split double digits number" do
      to_digits(20).should eq([2, 0])
    end

    it "split six digits number" do
      to_digits(654321).should eq([6, 5, 4, 3, 2, 1])
    end
  end
end
