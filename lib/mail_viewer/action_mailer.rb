class ActionMailer::Base < AbstractController::Base

	class << self
		attr_accessor :all_calls
	end
	@all_calls=[]

	def mail_with_logging(headers={},&block)
		ActionMailer::Base.all_calls << lambda {mail_without_logging(headers,&block)}
		mail_without_logging(headers,&block)
	end
	alias_method_chain :mail, :logging

end

#i=DateMailer.invitation_notifier(Invitation.first)
