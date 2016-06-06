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

    describe "XIII" do
      let(:value) {13}
      it {is_expected.to eq 'XIII'}
    end

    describe "XIV" do
      let(:value) {14}
      it {is_expected.to eq 'XIV'}
    end

    describe "XXVII" do
      let(:value) {27}
      it {is_expected.to eq 'XXVII'}
    end

    describe "XLVIII" do
      let(:value) {48}
      it {is_expected.to eq 'XLVIII'}
    end

    describe "LIX" do
      let(:value) {59}
      it {is_expected.to eq 'LIX'}
    end

    describe "XCIII" do
      let(:value) {93}
      it {is_expected.to eq 'XCIII'}
    end

    describe "CXLI" do
      let(:value) {141}
      it {is_expected.to eq 'CXLI'}
    end

    describe "CLXIII" do
      let(:value) {163}
      it {is_expected.to eq 'CLXIII'}
    end

    describe "CDII" do
      let(:value) {402}
      it {is_expected.to eq 'CDII'}
    end

    describe "DLXXV" do
      let(:value) {575}
      it {is_expected.to eq 'DLXXV'}
    end

    describe "CMXI" do
      let(:value) {911}
      it {is_expected.to eq 'CMXI'}
    end

    describe "MXXIV" do
      let(:value) {1024}
      it {is_expected.to eq 'MXXIV'}
    end

    describe "MMM" do
      let(:value) {3000}
      it {is_expected.to eq 'MMM'}
    end
  end
end