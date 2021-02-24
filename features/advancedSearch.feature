@AdvancedSearch
Feature: Google Advanced Search

@MainMenu
Scenario: Verify advanced search page
Given open google advanced search
Then input title "Elon Musk", languange, and time
Then validate result advanced search