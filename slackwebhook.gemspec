Gem::Specification.new do |slackwebhook|
	slackwebhook.name 		  = "slackwebhook"
	slackwebhook.version	  = "0.0.1"
	slackwebhook.date 		  = "2019-05-05"
	slackwebhook.authors      = ["Gurjant Singh"]
	slackwebhook.email        = ["info@defensestation.ca"]
	slackwebhook.summary      = %q{Gem to send slack web hook messages.}
	slackwebhook.description  = %q{Gem send messages to slack web hooks depend upon the type of the message.}
	slackwebhook.files		  = ["lib/slackwebhook.rb"]
	slackwebhook.homepage 	  = "https://github.com/gurjant31/slackwebhook"
	slackwebhook.extra_rdoc_files = ['README.md']
	slackwebhook.license 	  = "MIT"
	slackwebhook.add_development_dependency 'rspec', '~> 3.7'

end