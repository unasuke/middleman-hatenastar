Feature: hatenaster
  Scenario: Should embed hatenastar tag
    Given a fixture app "hatenastar"
    And the Server is running at "hatenastar"
    When I go to "/index.html"
    Then I should see "//s.hatena.ne.jp/js/HatenaStar.js"
