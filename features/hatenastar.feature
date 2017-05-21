Feature: hatenaster
  Scenario: Should embed hatenastar tag
    Given a fixture app "hatenastar"
    And the Server is running at "hatenastar"
    When I go to "/index.html"
    Then I should see "//s.hatena.ne.jp/js/HatenaStar.js"
    Then I should see "Hatena.Star.Token = 'token';"
    Then I should see "uri string"
    Then I should see "div.section"
