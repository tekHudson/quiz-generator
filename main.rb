#!/usr/bin/env ruby
require_relative 'quiz_generator'

quiz = QuizGenerator.new(STDIN, STDOUT)

num_questions = quiz.get_num_questions
