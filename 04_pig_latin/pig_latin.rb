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

#I don't like the pig latin. Why even use it? What makes a sound sound like a vowel and a consonant? What's the rule for that? Stupid rules. I hated working on this
#P.S. I know I could make a seperate function that would replace all the redundant lines, but the hate for this problem made me just finish it as quickly as possible and moved on.
