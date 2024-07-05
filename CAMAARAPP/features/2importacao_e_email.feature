Feature: importacao e email
    As a Adm
    I want to import the data from the students
    And email the students
    So they can register their password

    Scenario: importacao e email
        Given I am on gerenciamento
        When I click the import button
        When I click the email button
        Then The database should be updated
