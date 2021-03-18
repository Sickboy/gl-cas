# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# The key base was updated as part of 2.3
if Rails.configuration.loadbalanced_configuration
    Rails.application.config.session_store :redis_store,
    :servers => { :host => '172.21.0.4', :port => 6379 },
    :key_prefix => "glcas:rails:session",
    :expire_in => 30.minutes
else
    Rails.application.config.session_store :redis_store,
    :servers => { :host => '172.21.0.4', :port => 6379 },
    :key_prefix => "glcas:rails:session",
    :expire_in => 30.minutes
end
