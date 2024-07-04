Feature: aluno login
    As a aluno
    I want to log in my account
    So that I can acces the website

    Scenario: aluno login
        Given I am on the login page as a student
        Then I should be able to see the login title
        When I enter my correct student email
        When I enter my correct student password
        When I click the Login button as a student
        Then I should be redirected to home page
        And I should see a welcome message

    Scenario: login falho
        Given I am on the login page again
        When I enter an invalid password or email
        When I click the Login button again
        Then I should recieve a notification