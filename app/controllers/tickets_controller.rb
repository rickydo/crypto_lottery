class TicketsController < ApplicationController
	def new
		@ticket = Ticket.new
	end

	def create
		@ticket = Ticket.new(new_ticket_params)
		if @ticket.save
			TicketMailer.welcome_email(@ticket).deliver
			redirect_to root_path
		else
			flash[:error] = @ticket.errors.empty? ? "Error" : @ticket.errors.full_messages.to_sentence
			redirect_to new_ticket_path
		end
	end

	private

	def new_ticket_params
		params.require(:ticket).permit(:email)
	end

end
