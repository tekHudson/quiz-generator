require 'csv'
class QuizGenerator
  def initialize input_stream, output_stream
    @input_stream = input_stream
    @output_stream = output_stream
    @questions = {}
    populate_questions
    @questions_for_quiz = []
  end

  def get_num_questions
    puts "How many questions would you like to include in the quiz? "
    @output_stream.flush
    get_input
  end

  def get_questions_for_quiz(num)
    if (num.to_i % 2) == 0
      # even
      strand1 = @questions.select {|q_id, key| key[:strand_id] == 1}
      strand2 = @questions.select {|q_id, key| key[:strand_id] == 2}
    else
      # odd
    end
    puts strand1.inspect
    puts strand2.inspect
  end

  private


  def get_input
    @input_stream.gets.chomp
  end

  def populate_questions
    CSV.foreach("questions.csv") do |row|
      next unless row[0].to_i > 0
      @questions[row[4].to_i]= { strand_id: row[0],
                                 strand_name: row[1],
                                 standard_id: row[2],
                                 standard_name: row[3],
                                 difficulty: row[5] }
    end
  end
end
