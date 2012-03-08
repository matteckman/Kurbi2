ActionMailer::Base.smtp_settings = {
	:address              => "smtp.gmail.com",
	:port                 => 587,
	:domain               => "steve.roettger@gmail.com",
	:user_name            => "steve.roettger",
	:password             => "sRoettger12:)",
	:authentication		  => "plain",
	:enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"

