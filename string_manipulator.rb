class StringManipulator

    def initialize(arr)
        @arr = arr
    end

    def get_n_latest_texts(number)
        n_latest = 'This is '
        @arr.last(number).each_with_index do |text, index|
            n_latest += text
            n_latest += index + 1 < number ? ' ' : '.'
        end
        n_latest
    end

    def get_random_text
        'This is ' + @arr[rand(@arr.size)]
    end

    def get_n_latest_subjects(number)
        n_latest = 'This is'
        @arr.last(number).each_with_index do |text, index|
            n_latest += ',' if index > 0 && index < number - 1
            n_latest += ' and' if index + 1 == number && number != 1
            n_latest += ' ' + text.split.first(2).join(' ')
        end
        n_latest
    end

    def get_random_subject
        'This is ' + @arr[rand(@arr.size)].split.first(2).join(' ')
    end
end