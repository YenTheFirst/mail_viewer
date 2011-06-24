module MailViewer
	class MailViewController < ActionController::Base
		layout nil
	
		def index
			@calls = ActionMailer::Base.all_calls
		end
		
		def show
			@call = ActionMailer::Base.all_calls[params[:index]]
			render :html => @call[:call].call, :layout=>false if @call
		end
		
	end
end
