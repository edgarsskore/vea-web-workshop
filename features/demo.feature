Feature: Homework

    Scenario: Login User
        When I go to Appimation login page
        Given I am on Appimation login page
        When I submit login details
        Then I see project page

    Scenario: Login User without password
        When I go to Appimation login page
        Given I am on Appimation login page
        When I submit login details without password
        Then I am not logged in

     Scenario: Login User without email
        When I go to Appimation login page
        Given I am on Appimation login page
        When I submit login details without email
        Then I am not logged in 

    Scenario: Signup User without passwords
        Given I am on Appimation signup page
        When I submit signup details without passwords
        Then Im not signed up

    Scenario: Signup User without email
        Given I am on Appimation signup page
        When I submit signup details without email
        Then Im not signed up