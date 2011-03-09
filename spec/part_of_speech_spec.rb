require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "PartOfSpeech" do
  it "should properly tag 'the fast fox'" do
    a = PartOfSpeech.analyze(lexicon_path, text_sample)
    a[0][1].should == "DT"
    a[1][1].should == "JJ"
    a[2][1].should == "NN"
  end

  it "should tag words that are not in the lexicon consistently" do
    pos = PartOfSpeech.new(lexicon_path)
    text = "joker facebook"
    pos.tag(text).should == pos.tag(text)
  end
end
