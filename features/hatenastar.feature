Feature: hatenaster
  Scenario: 'aaaa'
    Given a fixture app "hatenastar"
    And the Server is running at "hatenastar"
    When I go to "/index.html"
    Then I should see "http://s.hatena.ne.jp/js/HatenaStar.js"
