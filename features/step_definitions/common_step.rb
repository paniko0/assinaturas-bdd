Then(/^I should get a (\d+) status code$/) do |code|
  expect(@client.resp.code).to eq(code.to_i)
end