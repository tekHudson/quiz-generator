require 'csv'
class QuizGenerator
  def initialize input_stream, output_stream
    @input_stream = input_stream
    @output_stream = output_stream
    @questions = {}
    populate_questions
  end

  def get_num_questions
    puts "How many questions would you like to include in the quiz? "
    @output_stream.flush
    get_input
  end

  private


  def get_input
    @input_stream.gets.chomp
  end

  def populate_questions
    CSV.foreach("questions.csv") do |row|
      next unless row[0].to_i > 0
      @questions[row[4]] = { difficulty: row[5] }
      @questions[row[4]] = { standard_id: row[2] }
      @questions[row[4]] = { standard_name: row[3] }
      @questions[row[4]] = { strand_id: row[0] }
      @questions[row[4]] = { strand_name: row[1] }
    end
  end
end
