#language: en
Feature: Balance

  Background:
    Given user is on balance screen

  @high_priority
  Scenario: Add expense
    When clicks on expense button
    And add 8000.99 value to it
    And choose "Bills" category
    Then a text is shown with the added value
    And the balance amount is updated with the "expense"

  @high_priority
  Scenario: Add expense using category button
    When clicks on Clothes category
    And add 50.34 value to it
    And add to category
    Then a text is shown with the added value
    And the balance amount is updated with the "expense"

  @high_priority
  Scenario: Add income
    When clicks on income button
    And add 5000 value to it
    And choose "Salary" category
    Then a text is shown with the added value
    And the balance amount is updated with the "income"

  @high_priority
  Scenario: View balance details
    And has balance history
    When clicks on balance button
    Then the balance details are displayed

  @low_priority
  Scenario: Change currency
    And clicks on config button
    When clicks on currencies button
    Then a screen to buy Monefy Pro is shown