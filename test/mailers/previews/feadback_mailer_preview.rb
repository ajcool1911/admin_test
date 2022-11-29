# Preview all emails at http://localhost:3000/rails/mailers/feadback_mailer
class FeadbackMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/feadback_mailer/create
  def create
    FeadbackMailer.create
  end

  # Preview this email at http://localhost:3000/rails/mailers/feadback_mailer/update
  def update
    FeadbackMailer.update
  end

  # Preview this email at http://localhost:3000/rails/mailers/feadback_mailer/delete
  def delete
    FeadbackMailer.delete
  end

end
