Given("I am on the Cuidados com a Roupa sector page") do
    sectorcuidadoscomaroupapage.load
    
    expect(sectorpage.title_sector.text).to eq 'Cuidados com a Roupa'
    expect(sectorpage.sidebar.title_filter_sector.text).to eq 'Cuidados com a Roupa'
end
  
When("I hover over the Cuidados com a Roupa sector") do
    sectorpage.topbar.hover_sector(sectorpage.topbar.sector_cuidados_com_a_roupa)
end
  
And("I click on the {string} category on the Cuidados com a Roupa topbar") do |topbar_category|
    sectorpage.topbar.click_topbar_category(topbar_category)
end
  
And("I confirm that I am on the {string} Cuidados com a Roupa sector category page") do |page_category|
    expect(sectorpage.title_category.text).to eq "#{page_category}"
end
  
And("I add a product of the Cuidados com a Roupa sector category") do
    step %{I add a product}
end
  
Then("I confirm that the Cuidados com a Roupa category product is in my bag") do
    expect(homepage.header.bag.text).to eq '1'
end
  
When("I click on the {string} category on the Cuidados com a Roupa sidebar") do |sidebar_category|
    if sidebar_category != "Amaciante"
        sectorpage.sidebar.click_sidebar_category(sidebar_category)
    else
        sectorpage.sidebar.click_category_amaciante
    end
end