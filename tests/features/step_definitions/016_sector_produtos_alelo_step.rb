Given("I am on the Produtos Alelo sector page") do
    sectorprodutosalelopage.load
end
  
And("I add a product of the Produtos Alelo sector category") do
    step %{I add a product}
end
  
Then("I confirm that the Produtos Alelo category product is in my bag") do
    expect(homepage.header.bag.text).to eq '1'
end