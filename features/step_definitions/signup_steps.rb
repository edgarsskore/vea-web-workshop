When(/^I am on Appimation signup page$/) do
  @tests.signup_tests.load_signup_page
end
When(/^I submit signup details$/) do
  @tests.signup_tests.submit_signup_details
end
When(/^I submit signup details without again password$/) do
  @tests.signup_tests.submit_signup_details_no_again_password
end
When(/^I submit signup details without passwords$/) do
  @tests.signup_tests.submit_signup_details_no_passwords
end
When(/^I submit signup details without email$/) do
  @tests.signup_tests.submit_signup_details_no_email
end
When(/^I go to Appimation login page$/) do
  @tests.login_tests.load_login_page
end
Then(/^I am on Appimation login page$/) do
  @tests.login_tests.login_page_visible?
end
Then(/^I submit login details$/) do
  @tests.login_tests.submit_login_details
  @tests.login_tests.try_logging_in
end
Then(/^I see project page$/) do
  @tests.login_tests.user_logged_in?
end
Then(/^I submit login details without password$/) do
  @tests.login_tests.submit_login_details_no_password
  @tests.login_tests.try_logging_in
end
#tikai prieksh scenariju lasaamiibas sho metodi izveidoju velreiz ar citu nosaukumu
Then(/^I am not logged in$/) do
  @tests.login_tests.login_page_visible?
end
Then(/^I submit login details without email$/) do
  @tests.login_tests.submit_login_details_no_email
  @tests.login_tests.try_logging_in
end
Then(/^Im not signed up$/) do
  @tests.signup_tests.can_close_signup?
end