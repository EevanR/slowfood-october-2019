Then("(I/he/she) should see {string}") do |content|
  expect(page).to have_content content
end

Then("(I/he/she) should be on the landing page") do
  expect(current_path).to eq root_path
end

Given("he should have {int} orders") do |int|
  expect(@user.orders.count).to eq int
end

Then("cart should be empty") do
  expect(OrderItem.count).to eq 0
end