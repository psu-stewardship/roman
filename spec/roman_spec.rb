require 'roman'

describe "Roman" do
  describe "biggest_numeral" do
    subject { Roman.new(1).biggest_numeral(value) }

    describe "I" do
      let(:value) {1}
      it {is_expected.to eq [1, 'I']}
    end

    describe "I" do
      let(:value) {2}
      it {is_expected.to eq [1, 'I']}
    end

    describe "X" do
      let(:value) {11}
      it {is_expected.to eq [10, 'X']}
    end

    describe "C" do
      let(:value) {111}
      it {is_expected.to eq [100, 'C']}
    end

  end
  describe "to_roman" do
    subject { Roman.new(value).to_roman }

    describe "I" do
      let(:value) {1}
      it {is_expected.to eq 'I'}
    end

    describe "II" do
      let(:value) {2}
      it {is_expected.to eq 'II'}
    end

    describe "III" do
      let(:value) {3}
      it {is_expected.to eq 'III'}
    end

    describe "IV" do
      let(:value) {4}
      it {is_expected.to eq 'IV'}
    end

    describe "V" do
      let(:value) {5}
      it {is_expected.to eq 'V'}
    end

    describe "VI" do
      let(:value) {6}
      it {is_expected.to eq 'VI'}
    end

    describe "VII" do
      let(:value) {7}
      it {is_expected.to eq 'VII'}
    end

    describe "VII" do
      let(:value) {8}
      it {is_expected.to eq 'VIII'}
    end

    describe "IX" do
      let(:value) {9}
      it {is_expected.to eq 'IX'}
    end

    describe "X" do
      let(:value) {10}
      it {is_expected.to eq 'X'}
    end

  end

  #
  # def test_27
  #   assert_equal 'XXVII', 27.to_roman
  # end
  #
  # def test_48
  #   assert_equal 'XLVIII', 48.to_roman
  # end
  #
  # def test_59
  #   assert_equal 'LIX', 59.to_roman
  # end
  #
  # def test_93
  #   assert_equal 'XCIII', 93.to_roman
  # end
  #
  # def test_141
  #   assert_equal 'CXLI', 141.to_roman
  # end
  #
  # def test_163
  #   assert_equal 'CLXIII', 163.to_roman
  # end
  #
  # def test_402
  #   assert_equal 'CDII', 402.to_roman
  # end
  #
  # def test_575
  #   assert_equal 'DLXXV', 575.to_roman
  # end
  #
  # def test_911
  #   assert_equal 'CMXI', 911.to_roman
  # end
  #
  # def test_1024
  #   assert_equal 'MXXIV', 1024.to_roman
  # end
  #
  # def test_3000
  #   assert_equal 'MMM', 3000.to_roman
  # end
end