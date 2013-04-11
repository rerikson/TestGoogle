@query_tests @high_risk
@regression @images
Feature: query google

  This feature tests google search

  Background:
    This is the background   gsdgdsgsadgsd

    Given I am on the google search page
    Given I am testing

  @run_search
  Scenario: search for images
    When I click image search
    And I search for capybara
    Then I should see capybara


  Scenario:
    Then the search button should exist

  @my_search
  Scenario:
    When I select news search
    And I search for justin bieber
    Then I should see justin bieber
    And the search button should exist


   @run_this_one
  Scenario Outline: search for lolcats
    When I search for <search_term>
    Then I should see <search_term>

  Examples: search terms
    | search_term      |
    | cats          |
    | adorable puppies |
    | ferrets          |



