Feature: Cadastro
    As a Aluno
    I want to type my password and click the confirm button
    So that I can have my account created

    Scenario: Cadastro
        Given I am on Cadastro page
        When I fill in my password
        When I click the confirmation button
        Then My account should be stored in the database

    Scenario: Cadastro falha
        Given I am on Cadastro page
        When I fill in an invalid password
        When I click the confirmation button
        Then I should recieve a notification