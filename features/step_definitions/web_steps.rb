pages = {
    'home' => '/'
}

Given /^I am on the ([^"]*) page$/ do |name|
  visit pages[name]
end

Then /^I should see "([^"]*)"$/ do |text|
  expect(page).to have_content(text)
end

Then /^I should be on the ([^"]*) page$/ do |name|
  expect(page).to have_current_path(pages[name])
end
