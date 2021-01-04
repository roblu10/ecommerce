@homepage
Feature: Buying methods
    In order to access all buying methods
    As an unsign up user
    I want to browse all the buying methods and access the HomeRefill app page on the AppStore and Google Play

@homepage_tryout_individual_steps
Scenario: Browsing individually through the Tryout steps
Given I am on the Homepage page
When I open Tryout pages
Then I confirm that I am on the correct pages

@homepage_lists_suggested
Scenario Outline: Browsing through Suggested Lists
Given I am on the Homepage page
And I click on the "<btn_suggested_list>" button
And I add a product
Then I should see the confirmation message "<title_suggested_list>"

Examples:
    | btn_suggested_list     | title_suggested_list                              |
    | Solteiro               | Sugestão de refil para \"Solteiro\"               |
    | Solteira               | Sugestão de refil para \"Solteira\"               |
    | Casal                  | Sugestão de refil para \"Casal\"                  |
    | Gestante               | Sugestão de refil para \"Gestante\"               |
    | Lar com adolescentes   | Sugestão de refil para \"Lar com adolescentes\"   |
    | Lar com crianças       | Sugestão de refil para \"Lar com crianças\"       |
    | Lar com filhos adultos | Sugestão de refil para \"Lar com filhos adultos\" |
    | Lar com idoso          | Sugestão de refil para \"Lar com idoso\"          |
    | República              | Sugestão de refil para \"República\"              |
    | Pequenos escritórios   | Sugestão de refil para \"Pequenos escritórios\"   |

@homepage_tryout_questions
Scenario: Accessing the Questions Tryout screen
Given I am on the Homepage page
When I click on the Veja nosso shopping inteligente button
Then I confirm that I am on the Tryout page

@homepage_app_store
Scenario: Accessing the HomeRefill app page on AppStore 
Given I am on the Homepage page
When I click on the AppStore link
Then I confirm that I am on the HomeRefill app page on AppStore

@homepage_google_play
Scenario: Accessing the HomeRefill app page on Google Play 
Given I am on the Homepage page
When I click on the Google Play link
Then I confirm that I am on the HomeRefill app page on Google Play