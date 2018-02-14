class Book
# write your code here
attr_accessor :title

def initialize
  @forbidden = ['in', 'the', 'of', 'and', 'a', 'an']
end

def title
  @title.capitalize.split(/ /).collect! { |word| (@forbidden.include?(word)) ?
                                        word : word.capitalize }
                                        .join(' ')
end

end
