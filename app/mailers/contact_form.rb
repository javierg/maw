class ContactForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "M@W | mensaje de #{name}",
      :to => "tijuanate@gmail.com,lorenalizethg@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
