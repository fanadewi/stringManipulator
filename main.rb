require_relative './string_manipulator'

arr = ['the horse and the hound and the horn that belonged to',
    'the farmer sowing his corn that kept',
    'the rooster that crowed in the morn that woke',
    'the priest all shaven and shorn that married',
    'the man all tattered and torn that kissed',
    'the maiden all forlorn that milked',
    'the cow with the crumpled horn that tossed',
    'the dog that worried',
    'the cat that killed',
    'the rat that ate',
    'the malt that lay in',
    'the house that Jack built']

@manipulator = StringManipulator.new(arr)

number = arr.size() + 1
while number > arr.size()
    print 'Enter a number: '
    input = gets.chomp
    number = input.to_i    
end


puts 'phase 1'
puts @manipulator.get_n_latest_texts(number)

puts 'phase 2 - A'
puts @manipulator.get_random_text

puts 'phase 2 - B'
puts @manipulator.get_n_latest_subjects(number)

puts 'phase 2 - C'
puts @manipulator.get_random_subject