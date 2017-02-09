require 'minitest/autorun'
require_relative 'main'
require_relative 'quiz_generator'

class QuizGeneratorTest < Minitest::Test
  def setup
    @input = MiniTest::Mock.new
    @output = MiniTest::Mock.new

    @qg = QuizGenerator.new(@input, @output)
  end

  def test_asking_the_question
    assert_output("How many questions would you like to include in the quiz? \n") { @qg.get_num_questions }
  end

  def test_storing_input_correctly

    assert_equal "8", @qg.get_num_questions
  end
end
