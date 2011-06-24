class ActionMailer::Base < AbstractController::Base

	class << self
		attr_accessor :all_calls
	end
	@all_calls=[]

	def mail_with_logging(headers={},&block)
		result = mail_without_logging(headers,&block)
		ActionMailer::Base.all_calls << {:call => lambda {mail_without_logging(headers,&block)}, :date => DateTime.now, :orig => result}
		result
	end
	alias_method_chain :mail, :logging

end

#i=DateMailer.invitation_notifier(Invitation.first)
