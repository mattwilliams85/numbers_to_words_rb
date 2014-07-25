require ("rspec")
require ("counting_with_words")

describe("numbWord") do
  it("returns its word version for 3 digit numbers") do
    numbWord(234).should(eq("two hundred and thirty four"))
  end

  it("returns its word version for 1 digit numbers") do
  numbWord(4).should(eq("four"))
  end

  it("returns its word version for 2  digit numbers") do
  numbWord(20).should(eq("twenty"))
  end

  it("returns its word version for 3  digit numbers") do
  numbWord(302).should(eq("three hundred and two"))
  end

  it("returns its word version for 4 digit numbers") do
    numbWord(1234).should(eq("one thousand two hundred and thirty four"))
  end

    it("returns its word version for 5 digit numbers") do
    numbWord(54321).should(eq("fifty four thousand three hundred and twenty one"))
  end

  it("returns its word version for 6 digit numbers") do
  numbWord(900100).should(eq("nine hundred thousand one hundred"))
  end

   it("returns its word version for 6 digit numbers with five zeros") do
  numbWord(900000).should(eq("nine hundred thousand"))
  end

  it("returns zero for a number consisting of only zeroes") do
  numbWord(000).should(eq("zero"))
  end

  it("returns its word version for 7 digit numbers") do
  numbWord(1987602).should(eq("one million nine hundred and eighty seven thousand six hundred and two"))
  end

  it("returns its word version for 7 digit numbers with six zeros") do
  numbWord(1000000).should(eq("one million"))
  end

  it("returns its word version for a huge number with a lot of zeroes") do
  numbWord(1000000000000).should(eq("one trillion"))
  end

   it("returns its word version for a huge number with a small remainder") do
  numbWord(1000000000002).should(eq("one trillion and two"))
  end

  it("returns its word version for a huge crazy number") do
  numbWord(9876543210907).should(eq("nine trillion eight hundred and seventy six billion five hundred and forty three million two hundred and ten thousand nine hundred and seven"))
  end

  it("returns its word version for a huge number with a mix of zeroes and integers") do
  numbWord(1000000100002).should(eq("one trillion one hundred thousand and two"))
  end
end


describe("counting_with_words") do
  it("takes a single digit numerical value and returns its word version") do
    counting_with_words(1).should(eq("one"))
  end

  it("takes a number in the 20's and returns its word version.") do
    counting_with_words(25).should(eq("twenty five"))
  end

  it("takes a number in the 30's and returns its word version.") do
    counting_with_words(39).should(eq("thirty nine"))
  end

  it("takes a multiple of 10 and returns its word version without a zero on t)he end
    .") do
    counting_with_words(40).should(eq("forty"))
  end

  it("takes a double digit number between 10 and 19 and outputs its word value") do
    counting_with_words(15).should(eq("fifteen"))
  end

  it("takes the edge case of input 10 and outputs its word value") do
    counting_with_words(10).should(eq("ten"))
  end

  it("takes a number > 100 and returns its word form.") do
    counting_with_words(110).should(eq("one hundred and ten"))
  end

  it("takes the number 100 and returns its word") do
    counting_with_words(100).should(eq("one hundred"))
  end

  it("takes the number 234 and returns its word") do
    counting_with_words(234).should(eq("two hundred and thirty four"))
  end

    it("takes the number 302 and returns its word") do
  counting_with_words(302).should(eq("three hundred and two"))
  end
end

