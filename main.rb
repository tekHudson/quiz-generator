#!/usr/bin/env ruby
require_relative 'quiz_generator'

quiz = QuizGenerator.new(STDIN, STDOUT)

num_questions = quiz.get_num_questions

quiz.get_questions_for_quiz(num_questions)
