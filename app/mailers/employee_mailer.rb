
class EmployeeMailer < ApplicationMailer
  default form: 'notification@example.com'

  def welcome_email(first_name)
    @first_name = first_name
    @url = "example.com/login"
    mail(to: @first_name.first_name, subject: 'welcome to my site')

  end
end
