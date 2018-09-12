class MainMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.notify_question_auther.subject
  #
  def notify_question_auther(answer)
    sleep 5
    
    @greeting = "Hi"
    @answer = answer

    mail to: answer.question.email, from: answer.email
  end
end
