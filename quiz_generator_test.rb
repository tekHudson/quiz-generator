require 'minitest/autorun'
require_relative 'main'
require_relative 'quiz_generator'

class QuizGeneratorTest < Minitest::Test
  def setup
    @input = StringIO.new
    @output = StringIO.new
    @test = QuizGenerator.new @input, @output
  end

  def test_asking_the_question
    assert_output("How many questions would you like to include in the quiz? \n") { @test.get_num_questions }
  end

  def test_getting_input_correctly
    assert_equal @input, @test.get_num_questions
  end
end
