module QuestionsHelper
  def coach_answer(your_message)
    if your_message.empty? || your_message.casecmp('I am going to work right now!').zero?
      return ""
    elsif your_message[-1] == '?'
      return 'Silly question, get dressed and go to work!'
    else
      return 'I don\'t care, get dressed and go to work!'
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)
    if answer == ''
      return ''
    elsif your_message == your_message.upcase
      return "I can feel your motivation! #{answer}"
    else
      return answer
    end
  end
end
