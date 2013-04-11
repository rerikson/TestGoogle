gem 'cucumber'
gem 'gherkin'


Given /^I am on the google search page$/ do
  visit "http://google.com"
  page.driver.browser.manage.window.maximize
end



When /^I search for (.*)/ do |search_term|
  case @search_mode
    when 'images'
      fill_in ElementNames::IMAGES_SEARCH, :with => search_term
      find(ElementNames::IMAGE_BUTTON).click
    when 'news'
      fill_in ElementNames::MAIN_SEARCH, :with => search_term
      find(ElementNames::NEWS_BUTTON).click
    else
      fill_in ElementNames::MAIN_SEARCH, :with => search_term
  end


end

Then /^I (?:should|will|can|do) see (.*)/ do |search_term|
  sleep(5)
  results = find("div [id='res']").text
  raise "#{search_term} is not included in the results" unless results.include?(search_term)

end

Then /^(.*) will appear on the screen$/ do |search_term|
  step "I will see #{search_term}"

end


When /^I click (.*)$/ do |search_term|
  @search_mode = 'images'
  find(ElementNames::IMAGE_LINK).click
end

Then /^the (.*) button should exist$/ do |button|
  "#{button} does not exist" unless has_xpath?(ElementNames::SEARCH_BUTTON)
end

When /^I select (.*)$/ do |search_term|
  @search_mode = 'news'
  find(ElementNames::NEWS_SEARCH).click


end

Then /^the (.*) search button should exist$/ do |button|
  "#{button} does not exist" unless has_xpath?(ElementNames::NEWS_BUTTON)
end