require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_auther" do
    
    question = Question.create email: "auther@question.com", body: "a test question"
    answer = Answer.create email: "auther@answer.com", body: "a test answer"
    
    question.answers << answer
    
    mail = MainMailer.notify_question_auther(answer)
    assert_equal "New answer to your question", mail.subject
    
    
    assert_equal [question.email], mail.to
    assert_equal [answer.email], mail.from
    
    assert_match answer.body, mail.body.encoded
  end

end
