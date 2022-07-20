#language: en
Feature: Account

  Background:
    Given user is on balance screen

  Scenario: Add account
    When clicks on config button
    And clicks add account
    And chooses account name and type
    Then the account is created

  Scenario: Change account
    When clicks on navigation button
    And clicks on account menu dropdown
    And chooses Payment Card
    Then only the account selected is shown