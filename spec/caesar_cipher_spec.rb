require './lib/main'

describe "Caesar cipher" do
  it "returns modified string given a phrase" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end
  it "returns modified string with same case" do
    expect(caesar_cipher("WHAT A STRING", 5)).to eql("BMFY F XYWNSL")
  end
  it "allows for negative shifts" do
    expect(caesar_cipher("Bmfy f xywnsl", -5)).to eql("What a string")
  end
  it "works for large shift" do
    expect(caesar_cipher("What a string!", 100)).to eql("Sdwp w opnejc!")
  end
  it "works for small shift" do
    expect(caesar_cipher("What a string!", 1)).to eql("Xibu b tusjoh!")
  end
  it "ignores punctuation" do
    expect(caesar_cipher("!.,what", 5)).to eql("!.,bmfy")
  end
end