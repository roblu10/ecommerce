class SuggestedListPage < SitePrism::Page
    set_url'/'
    
    element :title_banner_featured, '[data-selenium="banner-featured-title"]'
end