class TicketMailer < ActionMailer::Base
  default from: "us@cryptolottery.com"

  def welcome_email(ticket)
  	@ticket = ticket
  	@url = "http://google.com"
  	mail(to: @ticket.email, subject: "Here is your Crypto Lottery ticket")
  end
end
