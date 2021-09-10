require 'minitest/autorun'
require_relative './string_manipulator'

class StringManipulatorTest < Minitest::Test

    def setup
        @arr = ['the horse and the hound and the horn that belonged to',
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
        @manipulator = StringManipulator.new(@arr)
    end
    
    def test_get_n_latest_texts
        expected = "This is the malt that lay in the house that Jack built."
        assert_equal expected, @manipulator.get_n_latest_texts(2)
    end

    def test_get_random_text
        text = @manipulator.get_random_text
        text.slice! 'This is '
        assert @arr.any?(text)
    end

    def test_get_n_latest_subjects
        # 1
        assert_equal "This is the house", @manipulator.get_n_latest_subjects(1)
        # 2
        assert_equal "This is the malt and the house", @manipulator.get_n_latest_subjects(2)
        # 3
        assert_equal "This is the rat, the malt and the house", @manipulator.get_n_latest_subjects(3)
    end

    def test_get_random_subject
        arr_of_subject = []
        @arr.each { |text| arr_of_subject.append(text.split.first(2).join(' ')) }
        
        subject = @manipulator.get_random_subject
        subject.slice! 'This is '
        assert arr_of_subject.any?(subject)
    end

end