# Slack Web Hook <a href="https://badge.fury.io/rb/slackwebhook"><img src="https://badge.fury.io/rb/slackwebhook.svg" alt="Gem Version" height="18"></a>

Note: There are plans to add the slack message formatting directly to the gem. For now, you send the slack formatted slack message as normal type.

Slackwebhook send messages to slack hooks depend upon the message type.

## Installation

```
gem install slackwebhook
```
Require

```
require 'slackwebhook'
```

## Usage

* First Require the gem: ``` require 'Slackwbhook' ```
* Creating new instance require webhook url. ``` hook = Slackwebhook.new('webhook_url')```
* Select Type. Leave it if not sure. Normal by default ``` hook.type = 'info' ```
* Send message. ```response = hook.send('message')``` 
* See response. ```puts hook.output```
```
require 'slackwebhook'

hook = Slackwebhook.new('hook_url')
hook.type = "alert"
hook.send = "example: Change the configuration of servers"
response = hook.output #return net/http object back
```

## Message Types

* Info
* Warning
* Alert
* Normal *default*

## Authors

* **Gurjant Singh** - *Initial work* - [gurjant31](https://github.com/gurjant31)

See also the list of [contributors](https://github.com/gurjant31/slackwebhook/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
