Given(/^I am on the home page$/) do
  visit 'http://localhost:8000'
end

When(/^I click on the big button$/) do
  page.click_button 'Big Button'
end

Then(/^I should be on the red page$/) do
  expect(page.current_url).to eq('http://localhost:8000/red')
end
