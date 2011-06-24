Rails.application.routes.draw do |map|
	get "/mail_view", :to => "mail_view#index"
	get "/mail_view/:index", :to => "mail_view#show"
end
