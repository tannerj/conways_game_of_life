require './life'

RSpec.describe Life do
  describe "#neighbor_ids" do
    context "calculates a cell's neighbors" do
      it "caluclates a top,left cell's neighbors" do
        life = Life.new(id: 1)
        expect(life.neighbor_ids).to eq([2,9,10])
      end
      it "calculates a top, middle cell's neighbors" do
        life = Life.new(id: 4)
        expect(life.neighbor_ids).to eq([3,5,11,12,13])
      end
      it "calculates a top,right cell's neighbors" do
        life = Life.new(id: 8)
        expect(life.neighbor_ids).to eq([7,15,16])
      end
      it "calculates a middle,left cell's neighbors" do
        life = Life.new(id: 25)
        expect(life.neighbor_ids).to eq([17,18,26,33,34])
      end
      it "calculates a middle,middle cell's neighbors" do
        life = Life.new(id: 28)
        expect(life.neighbor_ids).to eq([19,20,21,27,29,35,36,37])
      end
      it "calculates a middle,right cell's neighbors" do
        life = Life.new(id: 32)
        expect(life.neighbor_ids).to eq([23,24,31,39,40])
      end
      it "calculates a bottom,left cell's neighbors" do
        life = Life.new(id: 57)
        expect(life.neighbor_ids).to eq([49,50,58])
      end
      it "calculates a bottom,middle cell's neighbors" do
        life = Life.new(id: 61)
        expect(life.neighbor_ids).to eq([52,53,54,60,62])
      end
      it "calculates a bottom,right cell's neighbors" do
        life = Life.new(id: 64)
        expect(life.neighbor_ids).to eq([55,56,63])
      end

    end
  end
end
