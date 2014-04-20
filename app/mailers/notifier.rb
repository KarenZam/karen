class Notifier < ActionMailer::Base
  default from: "Karen Farzam <kfarzam@gmail.com>"

  def contact(email, subject, body)
    @body = body
    @email = email
    mail to: "kfarzam@gmail.com", subject: subject
  end

  def contact_reply(email)
    puts "contact reply"
    @email = email

    mail to: @email, subject: "[Karen Farzam] Thank you for contacting me"
  end

  def contact_reply_error(email, subject, body)
    @body = body
    @email = email
    @subject = subject
    mail to: "kfarzam@gmail.com", subject: "error in contact form"
  end

end