Rails.application.routes.draw do |map|
	namespace :mail_viewer do
		get "/", :to => "mail_view#index"
		get "/:index", :to => "mail_view#show", :as=>"show_mail"
	end
end
