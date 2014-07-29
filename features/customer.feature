Feature: Coupon API

Scenario: Create Coupon
  When I make a GET request to /v2/customers
  Then I should get a 200 status code
  And the JSON response should have "id"