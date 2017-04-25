class UserMailer < ApplicationMailer

  def success_login(email, user_agent)
    @user_agent = user_agent
    mail(to: 'danielcfe@gmail.com',
    subject: "Hola! has ingresado exitosamente a AIM testing",
    track_opens: true)
  end

  def fail_login(email, user_agent)
    @user_agent = user_agent
    mail(to: 'danielcfe@gmail.com',
    subject: "Hola! han realizado in intento fallido de ingreso a AIM testing",
    track_opens: true)
  end

end
