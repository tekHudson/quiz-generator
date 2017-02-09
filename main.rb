#!/usr/bin/env ruby
require_relative 'quiz_generator'

quiz = QuizGenerator.new(STDIN, STDOUT)

num_questions = quiz.get_num_questions

question_ids = quiz.get_questions_for_quiz(num_questions)

puts question_ids.join(",")
