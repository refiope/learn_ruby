#write your code here
def echo (string)
  string.to_s
end

def shout (string)
  string.to_s.upcase
end

def repeat (*arg)
  new_string = " " + arg[0]
  if (arg.length > 1)
    arg[0] + new_string * (arg[1]-1)
  else
    arg[0] + new_string
  end
end

def  start_of_word (*arg)
  arg[0].split(//).slice(0, arg[1]).join
end

def first_word (string)
  string.split(/ /)[0]
end

def titleize (string)
  def check_little_words (string)
    if (string.downcase == 'and' || string.downcase == 'the' || string.downcase == 'over')
      true
    else
      false
    end
  end
  new_array = []
  counter = 0
  string.split(/ /).each {|word|  new_array.push(word.capitalize)}
  while (counter < new_array.length) do
    if (check_little_words(new_array[counter]) && counter != 0)
      new_array[counter] = new_array[counter].downcase
    end
    counter += 1
  end
  new_array.join(' ')
end
