Feature: Stripping the left column
  Being a developer
  I want to strip the left column of a multiline string
  In order to delete needless spaces

  Scenario: Stripping the left column
    Given I have the following string
      """
            Эй, жлоб!
          Где туз?
              Прячь юных съемщиц в шкаф.
      """
    When I strip the left column
    Then I should have the following string
      """
        Эй, жлоб!
      Где туз?
          Прячь юных съемщиц в шкаф.
      """

  Scenario: Stripping the left column of a string with blank lines
    Given I have the following string
      """


            Эй, жлоб!

          Где туз?

              Прячь юных съемщиц в шкаф.


      """
    When I strip the left column
    Then I should have the following string
      """

        Эй, жлоб!

      Где туз?

          Прячь юных съемщиц в шкаф.

      """

  Scenario: Stripping the left column of a string with leading and trailing spaces
    Given I have the following string
      """
          
            Эй, жлоб!
          Где туз?
              Прячь юных съемщиц в шкаф.
          
      """
    When I strip the left column
    Then I should have the following string
      """
        Эй, жлоб!
      Где туз?
          Прячь юных съемщиц в шкаф.
      """
