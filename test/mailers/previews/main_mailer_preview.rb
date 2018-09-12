# Preview all emails at http://localhost:3000/rails/mailers/main_mailer
class MainMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/main_mailer/notify_question_auther
  def notify_question_auther  
    mail = MainMailer.notify_question_auther(Answer.first)
  end

end
