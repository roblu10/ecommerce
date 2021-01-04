=begin
    CLASS:
    Class => The first letter must be uppercase
    Class Page => The first letter must be uppercase and finish with "Page". Ex.: TestPage
    Class Section => The first letter must be uppercase and finish with "Section". Ex.: TestSection

    STEP:
    Messsage verification => I should see the confirmation message "" / I should see the error message ""
    Page verification => I am on the Homepage page /or/ I check if I am on the NamePage page
    Fill field => I fill in the Field name field ""
    Button =>  I click on the Button name button
    Link => I click on the Link name link
    Select => I select ...
    Confirm page => I confirm that I am on the Name page
    Confirm data => I confirm that all Name data has been changed
    
    This command makes the page go up or down
    page.execute_script "window.scrollTo(0,1000)"

    cucumber --tags @tag
    cucumber --tags '@tag1 or @tag2'
    cucumber --tags '@tag1 or @tag2 or @tag3'
    cucumber --tags 'not @tag1 and (@tag2 or @tag3)'
=end