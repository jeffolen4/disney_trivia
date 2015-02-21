module FormHelper

  def setup_question( question )
    if !question.answers.empty?
      rc = 4 - question.answers.count
    else
      question.answers = []
      rc = 4
    end

    rc.times { question.answers << Answer.new }

    if !question.hints.empty?
      rc = 4 - question.hints.count
    else
      question.hints = []
      rc = 4
    end

    rc.times { question.hints << Hint.new }

    return question
  end

end
