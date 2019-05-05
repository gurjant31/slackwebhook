require 'slackwebhook'

RSpec.describe Slackwebhook do 

	describe '#test' do 

		it 'it returns Invalid URL' do
			hook = Slackwebhook.new('test')
			hook.output.eql?("Invalid URL")
		end

		it 'it return type data' do 
			hook = Slackwebhook.new('https://hooks.slack.com/test')
			hook.type = "alert"
			hook.type.eql?("alert")
		end

	end

end