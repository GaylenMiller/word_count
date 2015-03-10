require 'rspec'
require 'word_count'


# Create a website that uses a method to return how frequently a word appears 
# in a given string. 

# The user should input both the word and the string of words to check. 
# Check for full word matches only.


describe "count the number of words" do

  it("will return a Fixnum") do
  	word_count = Word_Count.new 'abc'
  	expect(word_count.how_many('abc').class).to(eq(Fixnum))
  end

  it("will return 1") do
  	word_count = Word_Count.new 'Abc'
  	expect(word_count.how_many('abc')).to(eq(1))
  	expect(word_count.how_many('asf abc fasdfsad')).to(eq(1))
  end

  it("will return 2") do
  	word_count = Word_Count.new 'Abc'
  	expect(word_count.how_many('abc ABC')).to(eq(2))
  	expect(word_count.how_many('abc asdfasd fasdfsad ABC')).to(eq(2))
  end

  it("will return 3") do
  	word_count = Word_Count.new 'Gaylen'
  	expect(word_count.how_many('asdjkasdjklafjklsdf;jkdfsajkfl gaylen a sdjdasjfdsjasdfj ,gaylen, afjdfdjfsj gaylen.')).to(eq(3))
  	expect(word_count.how_many(' gaylen gaylen gaynel gaylen')).to(eq(3))
  end

end