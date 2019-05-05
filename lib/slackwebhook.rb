# Requires
require 'net/http'
require 'net/https'
require 'uri'
require 'json'

class Slackwebhook

	attr_accessor :webhook,:headers,:type
	attr_reader :output


	def initialize(webhook)
		#Output Variable to see th output of the scan
		@output = ""
		#Check the url and assign it
		@webhook = check_url(webhook)
		#Headers to set for the slack post request
		@headers = {'Content-Type': 'text/json'}
		#Type of request to send to the hook
		@type = "normal"

	end

	def send=(data)
		#Set the https request
		https = Net::HTTP.new(@webhook.host, @webhook.port)
		https.use_ssl = true
		#Set the hearders and path for the request
		request = Net::HTTP::Post.new(@webhook.request_uri, @header)
		#set the output message
		request.body = data_format(data).to_json
		#send the request and assing the response to output variable
		@output = https.request(request)
		puts @output.code
	end


	def data_format(data)
		#format the message depend upon the type field
		@body = {}		
		case @type.downcase
		when 'info'
			@body[:attachments] = [{color: "#0FF612",text: data}]
		when 'warning'
			@body[:attachments] = [{color: "#F2F60F",text: data}]
		when 'alert'
			@body[:attachments] = [{color: "#e33d3b",text: data}]
		else
			@body[:text] = data
		end
		puts @body
		@body

	end
	
	def check_url(webhook)
		#Parse url
		uri = URI.parse(webhook)
		# If parsing of url and host of the url matches the hooks.slack.com then return url
		(webhook =~ URI::regexp && uri.host == "hooks.slack.com") ? uri : error("Invalid URL")
	end

	def error(text)
		#Display the error
		puts "[-] #{text}. Check the url documentation: https://api.slack.com/incoming-webhooks"
		#assing to output variable
		@output = text
	end

end

