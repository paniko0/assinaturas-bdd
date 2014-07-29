Then(/^I should get a (\d+) status code$/) do |code|
  expect(@client.code).to eq(code.to_i)
end