#FeedbackMailer

This project rocks and uses MIT-LICENSE.

##Using the mailer

This engine is used for users to give feedback about the application it is used in. No data is stored to the database, an email is sent to a specified address. This engine consists of a helper to generate the feedback link, a form for the users to fill in, a model object for the feedback and a controller for the feedback to be sent.

First the engine needs to be mounted in routes.rb:

```ruby
	mount FeedbackMailer::Engine => "/feedback_mailer"
```

##How to add the feedback link

A link helper has been created to generate the relevant links, for this to work, the following line needs to be added to the ApplicationController

```ruby
	helper FeedbackMailer::FeedbackLinkHelper
```

From here the following erb can be used in the application.html.erb (or wherever you like) to generate the feedback link:

```ruby
	<%= feedback_link %>
```

The engine's stylesheet must also be added into the application.html.erb like so

```ruby
  <%= stylesheet_link_tag "feedback_mailer/application.css" %>
```

##Overriding the default settings

The address which the feedback is sent from is set in the application config files. In order to set this up the following line must be added into the relevant config file:

```ruby
	feedback_to_address: [your address here]
```

To override the css, an additional directory must be created in `app/assets/stylesheets`. Create a directory called `feedback_mailer` and inside that folder create a file called `application.css`. This file will be used in the place of the engine's .css file. There are only three elements with styling in the css that need to be overridden: `.feedback_link`, `a.feedback_link` and `a.feedback_link:hover`. This .css file can be used to create additional styling for the form if required.


