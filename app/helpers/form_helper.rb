module FormHelper

  def setup_question( question )
    return question if question.errors.any?
    
    if !question.answers.empty?
      rc = 4 - question.answers.count
    else
      question.answers = []
      rc = 4
    end

    # rc.times { question.answers << Answer.new }
    rc.times { question.answers.build }

    if !question.hints.empty?
      rc = 4 - question.hints.count
    else
      question.hints = []
      rc = 4
    end

    rc.times { question.hints.build }

    return question
  end

end
