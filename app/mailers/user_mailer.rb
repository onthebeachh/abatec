class UserMailer < ActionMailer::Base
  default :from => "info@pivoter.cl"

  def enviar_invitacion(user)
    @user = user
    @numero_invitacion = 10 + user.id
    mail(:to => user.email, :subject => "Invitación Grow Seed")
  end
end
