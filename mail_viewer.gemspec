Gem::Specification.new do |gem|
	gem.name     = "mail_viewer"
	gem.version  = "0.0.1"
	gem.summary  = "in Rails, view ActionMailer based emails in the browser"
	
	gem.files    = `git ls-files`.split("\n")
	gem.require_paths = ['lib']
end
	
