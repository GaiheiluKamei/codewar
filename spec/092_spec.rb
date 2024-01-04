describe "Solution" do
  class Student
    attr_reader :name
    attr_reader :fives
    attr_reader :tens
    attr_reader :twenties

    def initialize(name, fives, tens, twenties)
      @name = name
      @fives = fives
      @tens = tens
      @twenties = twenties
    end
  end

  it "Fixed tests" do
    phil = Student.new("Phil", 2, 2, 1)
    cam = Student.new("Cameron", 2, 2, 0)
    geoff = Student.new("Geoff", 0, 3, 0)

    expect(most_money([cam, geoff, phil])).to eq("Phil")
    expect(most_money([cam, geoff])).to eq("all")
    expect(most_money([geoff])).to eq("Geoff")
  end
end