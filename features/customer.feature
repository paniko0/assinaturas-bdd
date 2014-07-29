Feature: Customer API

Scenario: Listing Customers
  When I make a GET request to /v2/customers
  Then I should get a 200 status code
  And the JSON response at "customers/0/code" should be "david-luis-da-silva02"