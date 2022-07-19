#language: en
Feature: Balance

  Background:
    Given user is on balance screen
#
#    Scenario: Add expense by minus button
#      When clicks on expense button
#      And add 599 value to it
#      And choose "Bills" category
#      Then a text is shown with the added value
#      And the balance amount is updated with the "expense"

  Scenario: Add income
    When clicks on income button
    And add 5000 value to it
    And choose "Salary" category
    Then a text is shown with the added value
    And the balance amount is updated with the "income"