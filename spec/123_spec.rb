describe("Basic Tests") do
  it 'test' do
    expect(sort_photos(["2016.img1","2016.img2","2016.img3","2016.img4","2016.img5"])).to eq(["2016.img1","2016.img2", "2016.img3", "2016.img4","2016.img5","2016.img6"])
    expect(sort_photos(["2016.img4","2016.img5","2016.img1","2016.img3","2016.img2"])).to eq(["2016.img1","2016.img2", "2016.img3", "2016.img4","2016.img5","2016.img6"])
    expect(sort_photos(["2012.img2","2016.img1","2016.img3","2016.img4","2016.img5"])).to eq(["2012.img2","2016.img1", "2016.img3", "2016.img4","2016.img5","2016.img6"])
    expect(sort_photos(["2016.img1","2013.img3","2016.img2","2015.img3","2012.img7","2016.img4","2013.img5"])).to eq(["2013.img5", "2015.img3","2016.img1","2016.img2","2016.img4","2016.img5"])
    expect(sort_photos(["2016.img7","2016.img2","2016.img3","2015.img3","2012.img8","2016.img4","2016.img5"])).to eq (["2016.img2", "2016.img3","2016.img4","2016.img5","2016.img7","2016.img8"])
  end
end