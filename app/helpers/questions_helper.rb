module QuestionsHelper
  def coach_answer(your_message)
    return 'Great!' if your_message.casecmp('I am going to work right now!').zero?

    return 'Silly question, get dressed and go to work!' if your_message[-1] == '?'

    'I don\'t care, get dressed and go to work!'
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)
    return "I can feel your motivation! #{answer}" if your_message == your_message.upcase

    answer
  end
end
