module MailViewer
	class MailViewController < ActionController::Base
		layout nil
	
		def index
			@calls = ActionMailer::Base.all_calls
		end
		
		def show
			@call = ActionMailer::Base.all_calls[params[:index].to_i]
			render :inline => @call[:call].call.body.raw_source, :layout=>false if @call

		end
		
	end
end
