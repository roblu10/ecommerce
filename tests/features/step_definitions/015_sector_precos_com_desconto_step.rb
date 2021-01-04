Given("I am on the Preços com Desconto sector page") do
    sectorprecoscomdescontopage.load
    
    expect(sectorpage.title_sector.text).to eq 'Preços com Desconto'
    expect(sectorpage.sidebar.title_filter_sector.text).to eq 'Preços com Desconto'
end
  
When("I hover over the Preços com Desconto sector") do
    sectorpage.topbar.hover_sector(sectorpage.topbar.sector_precos_com_desconto)
end
  
And("I click on the {string} category on the Preços com Desconto topbar") do |topbar_category|
    if topbar_category != "Leite"
        sectorpage.topbar.click_topbar_category(topbar_category)
    else
        sectorpage.topbar.click_category_leite
    end
end
  
And("I confirm that I am on the {string} Preços com Desconto sector category page") do |page_category|
    expect(sectorpage.title_category.text).to eq "#{page_category}"
end
  
And("I add a product of the Preços com Desconto sector category") do
    homepage.click_btn_add_product
end
  
Then("I confirm that the Preços com Desconto category product is in my bag") do
    expect(homepage.header.bag.text).to eq '1'
end
  
When("I click on the {string} category on the Preços com Desconto sidebar") do |sidebar_category|
    if (sidebar_category != "Gatos") && (sidebar_category != "Leite")
        sectorpage.sidebar.click_sidebar_category(sidebar_category)
    elsif sidebar_category == "Gatos"
        sectorpage.sidebar.click_category_gatos
    elsif sidebar_category == "Leite"
        sectorpage.sidebar.click_category_leite
    end
end