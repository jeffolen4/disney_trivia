module FormHelper

  def setup_question( question )
    logger.debug "question: #{question.id}"
    if !question.answers.empty?
      rc = 4 - question.answers.count
    else
      question.answers = []
      rc = 4
    end

    logger.debug "rc: #{rc}"
    rc.times { question.answers << Answer.new }

    if !question.hints.empty?
      rc = 4 - question.hints.count
    else
      question.hints = []
      rc = 4
    end

    logger.debug "rc: #{rc}"
    rc.times { question.hints << Hint.new }
    logger.debug "hints count: #{question.hints.length}"

    return question
  end

end
