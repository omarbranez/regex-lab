def starts_with_a_vowel?(word)
    word.match?(/\b[aeiou]\w*\b/i) #accounts for vowels at beginning bound \b for any character, regardless of case, followed by whatever
end

def words_starting_with_un_and_ending_with_ing(text)
    #text.scan(/\w+ing|\w+un/i) #character ending un or character ending ing, case insensitive
    text.scan(/\bun+\w*ing\b/)  #word bounding of "un" AND words ending in "ing", word bounding
end

def words_five_letters_long(text)
    text.scan(/\b\w{5}\b/) #five characters exist in anything bounded as a word
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    text.match?(/^[A-Z].+[!?\.]$/) #begins with capital letters, followed by anything, and also ends with !? or period. note period is written as \.

end

def valid_phone_number?(phone)
    phone.match?(/[0-9]{10}|\([0-9]{3}\)[0-9]{3}\-[0-9]{4}|[0-9]{3}\s[0-9]{3}\s[0-9]{4}|\([0-9]{3}\)[0-9]{7}/)
#accounts for each case in rspec
# dddddddddd, (ddd)ddd-dddd, ddd ddd dddd, and (ddd)ddddddd
end
