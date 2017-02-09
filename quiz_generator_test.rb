require 'minitest/autorun'
require_relative 'quiz_generator'

class QuizGeneratorTest < Minitest::Test
  def ensure_we_ask_for_number_of_questions
    assert_output("How many questions would you like to include in the quiz? \n") { main }
  end
end
