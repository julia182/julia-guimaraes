Feature: Account

  Background:
    Given user is on balance screen

  Scenario: Change account
    When clicks on navigation button
    And clicks on account menu dropdown
    And chooses Payment Card
    Then only the account selected is shown