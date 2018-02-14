#write your code here
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)

def translate (string)
  array = string.split(/ /)
  new_array = []
  total_array = []
  counter = 0

  while (counter < array.length) do
    if (array[counter].split(//)[0].index(/[aeio]/) == nil && array[counter].split(//)[1].index(/[aeio]/) == nil && array[counter].split(//)[2].index(/[aeio]/) == nil)
      new_array = array[counter].split(//)
      new_array.push(new_array[0] + new_array[1] + new_array[2] + 'ay').shift(3)
      total_array.push(new_array.join(''))
    elsif (array[counter].split(//)[0].index(/[aeio]/) == nil && array[counter].split(//)[1].index(/[aeio]/) == nil)
      new_array = array[counter].split(//)
      new_array.push(new_array[0] + new_array[1] + 'ay').shift(2)
      total_array.push(new_array.join(''))
    elsif (array[counter].split(//)[0].index(/[aeio]/) == nil)
      new_array = array[counter].split(//)
      new_array.push(new_array[0] + 'ay').shift
      total_array.push(new_array.join(''))
    else
      new_array = array[counter].split(//)
      new_array.push('ay')
      total_array.push(new_array.join(''))
    end
    counter += 1
  end

  total_array.join(' ')
end
