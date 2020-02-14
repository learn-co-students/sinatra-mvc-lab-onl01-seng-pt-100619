class PigLatinizer

    attr_accessor :str

def initialize
    
end

def piglatinize(str)
    str.split(' ').collect do |word|
       # find words that begin w/vowels
       # add 'way' to end
       # binding.pry
       if ['a', 'e', 'i', 'o', 'u'].include?(word[0].downcase)
          word + 'way'
       else
       # move consonsants to end & add 'ay'      
       otherLetters = word.match(/[aeiou].*/)[0]
       beg = word.split(otherLetters)[0]
       # binding.pry
          otherLetters + beg + 'ay'
       end
     end.join(' ')
end
    

  
end