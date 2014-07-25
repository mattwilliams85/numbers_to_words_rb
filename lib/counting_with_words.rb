def counting_with_words(inputNumber)

  inputNumber = inputNumber.to_s.split('')
  numberArray = []
  singleDigitWords = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  secondDigitWords = ["teen", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  outputWord = ""

  inputNumber.each do |number|
    numberArray << number.to_i
  end

  if inputNumber.length == 3

    if numberArray[1] == 0 && numberArray[2] == 0

      outputWord = singleDigitWords[numberArray[0]] + " hundred"
    elsif numberArray[1] == 0
      outputWord = singleDigitWords[numberArray[0]] + " hundred and ";
      numberArray.shift(2)
    else
      outputWord = singleDigitWords[numberArray[0]] + " hundred and ";
      numberArray.shift(1)
    end
  end

  if numberArray.length == 1
    outputWord += singleDigitWords[numberArray[0]]
  elsif numberArray.length == 2
    if numberArray[1] == 0 && numberArray[0] != 1
      outputWord += secondDigitWords[numberArray[0]-1]
    elsif numberArray[0] == 1
      outputWord += teens[numberArray[1]]
    else
      outputWord += secondDigitWords[numberArray[0]-1].to_s + " " + singleDigitWords[numberArray[1]]
    end
  end
  outputWord
end

def numbWord(number)
  digitName = ["","thousand","million","billion","trillion","quadrillion","quintillion","sixtillion","sectillion","octillion","ninetillion","trillion billion"]
  numbArray = number.to_s.split('')
  loopstop  = (numbArray.length.to_f/3).ceil
  numbInt   = (numbArray.join).to_i
  outputWord = " "
  counter = 0

  loopstop.downto(1) do |i|
    remainder = numbInt % 1000

    if i == loopstop && remainder < 100 && remainder > 0 && numbArray.length > 3
      outputWord =  "and " + counting_with_words(remainder)
    elsif (remainder != 0)
      outputWord = counting_with_words(remainder) + " " + digitName[counter] + " " + outputWord
    end
    counter += 1
    i += i
    numbInt = (numbInt/1000)
  end

  if number == 0
    outputWord = "zero"
  end
  outputWord.strip()
end

numbWord(1002)

