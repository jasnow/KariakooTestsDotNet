Feature: Price Information

  * Overview of Data Input Process (5/27/2012 Email)
  * Price
    * Market employees collect price data as a range once per day.
    * Price form will be used to enter data for each crop once per day.
    * For now, we will assume that everything is measured in kilos
        but will adjust later as needed.

  As a market clerk
  I want to enter pricing summaries for the day by crop and quality

  Scenario Outline:
    Given that I am on home page
    And I can get to the price entry page

    When I select the "commodity" as "<commodity>"
    And I enter the date <dateValue>
    And I enter the quality "<quality>"
    And I enter the lowest farm gate quoted price as <flPrice>
    And I enter the highest farm gate quoted price as <fhPrice>
    And I enter the lowest delivered quoted price as <dlPrice>
    And I enter the highest delivered quoted price as <dhPrice>
    And I enter the lowest wholesale quoted price as <wlPrice>
    And I enter the highest wholesale quoted price as <whPrice>
    And I enter the lowest retail quoted price as <rlPrice>
    And I enter the highest retail quoted price as <rhPrice>
    And I push "Submit" button
    Then the response should succesfully

  Examples:

| commodity                 | dateValue  | quality | flPrice                         | fhPrice                         | dlPrice                         | dhPrice                         | wlPrice                         | whPrice                         | rlPrice                         | rhPrice                         |
| Tomatoes(Nyanya)          | 02/02/2012 | Grade 1 | 1                               | 1                               | 1                               | 1                               | 1                               | 1                               | 1                               | 1                               |
| Tomatoes(Nyanya)          | 02/02/12   | Grade 2 | 0                               | 0                               | 0                               | 0                               | 0                               | 0                               | 0                               | 0                               |
| Tomatoes(Nyanya)          | 02/02      | Grade 3 | -10                             | -10                             | -10                             | -10                             | -10                             | -10                             | -10                             | -10                             |
| Tomatoes(Nyanya)          | 2012/02/02 | Grade 3 | 10.1                            | 10.1                            | 10.1                            | 10.1                            | 10.1                            | 10.1                            | 10.1                            | 10.1                            |
| Tomatoes(Nyanya)          | 02/30/2012 | Grade 3 | $10                             | $10                             | $10                             | $10                             | $10                             | $10                             | $10                             | $10                             |
| Tomatoes(Nyanya)          | 04/31/2012 | Grade 3 | ALPHA                           | ALPHA                           | ALPHA                           | ALPHA                           | ALPHA                           | ALPHA                           | ALPHA                           | ALPHA                           |
| Tomatoes(Nyanya)          | 06/31/2012 | Grade 3 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 |
| Tomatoes(Nyanya)          | 09/31/2012 | Grade 3 | 0                               | 1                               | 9999999999999999999999999999999 | ALPHA                           | $10                             | 10.1                            | -10                             | 0                               |
| Tomatoes(Nyanya)          | 11/31/2012 | Grade 3 | 1                               | 0                               | 9999999999999999999999999999999 | $10                             | ALPHA                           | -10                             | 10.1                            | 1                               |
| Tomatoes(Nyanya)          | 02/29/2011 | Grade 3 | 9999999999999999999999999999999 | ALPHA                           | 0                               | 1                               | $10                             | -10                             | 0                               | 10.1                            |
| Tomatoes(Nyanya)          | ALPHA      | Grade 3 | 9999999999999999999999999999999 | $10                             | 1                               | 0                               | ALPHA                           | 10.1                            | 1                               | -10                             |
| Tomatoes(Nyanya)          | 02&02&2012 | Grade 3 | 9999999999999999999999999999999 | 10.1                            | ALPHA                           | $10                             | 0                               | 1                               | -10                             | 9999999999999999999999999999999 |
| Potatoes(Viazi)           | 02/02/2012 | Grade 3 | 9999999999999999999999999999999 | -10                             | $10                             | ALPHA                           | 10.1                            | 0                               | 9999999999999999999999999999999 | ALPHA                           |
| Potatoes(Viazi)           | 02/02/12   | Grade 1 | ALPHA                           | 9999999999999999999999999999999 | 10.1                            | $10                             | -10                             | 9999999999999999999999999999999 | ALPHA                           | $10                             |
| Potatoes(Viazi)           | 02/02      | Grade 2 | $10                             | ALPHA                           | 9999999999999999999999999999999 | 10.1                            | 1                               | ALPHA                           | $10                             | 9999999999999999999999999999999 |
| Potatoes(Viazi)           | 2012/02/02 | Grade 2 | -10                             | $10                             | ALPHA                           | 9999999999999999999999999999999 | 9999999999999999999999999999999 | $10                             | 10.1                            | 0                               |
| Potatoes(Viazi)           | 02/30/2012 | Grade 2 | 10.1                            | 1                               | -10                             | -10                             | ALPHA                           | 9999999999999999999999999999999 | 0                               | ALPHA                           |
| Potatoes(Viazi)           | 04/31/2012 | Grade 2 | 1                               | 10.1                            | $10                             | 0                               | $10                             | 9999999999999999999999999999999 | -10                             | 1                               |
| Potatoes(Viazi)           | 06/31/2012 | Grade 2 | ALPHA                           | -10                             | 1                               | 1                               | 0                               | 10.1                            | ALPHA                           | 10.1                            |
| Potatoes(Viazi)           | 09/31/2012 | Grade 2 | 9999999999999999999999999999999 | 0                               | 10.1                            | -10                             | 1                               | $10                             | 9999999999999999999999999999999 | -10                             |
| Potatoes(Viazi)           | 11/31/2012 | Grade 2 | 0                               | 9999999999999999999999999999999 | ALPHA                           | 10.1                            | 10.1                            | -10                             | 1                               | $10                             |
| Potatoes(Viazi)           | 02/29/2011 | Grade 2 | ALPHA                           | $10                             | 9999999999999999999999999999999 | -10                             | 10.1                            | 1                               | ALPHA                           | 9999999999999999999999999999999 |
| Potatoes(Viazi)           | ALPHA      | Grade 2 | ALPHA                           | 10.1                            | 0                               | 9999999999999999999999999999999 | -10                             | ALPHA                           | 9999999999999999999999999999999 | 1                               |
| Potatoes(Viazi)           | 02&02&2012 | Grade 2 | ALPHA                           | 0                               | $10                             | 10.1                            | 9999999999999999999999999999999 | ALPHA                           | 0                               | -10                             |
| Spinach(Spinachi)         | 02/02/2012 | Grade 2 | ALPHA                           | 9999999999999999999999999999999 | -10                             | 0                               | $10                             | ALPHA                           | 10.1                            | 9999999999999999999999999999999 |
| Spinach(Spinachi)         | 02/02/12   | Grade 3 | 9999999999999999999999999999999 | 1                               | ALPHA                           | 10.1                            | -10                             | $10                             | $10                             | 10.1                            |
| Spinach(Spinachi)         | 02/02      | Grade 1 | 10.1                            | $10                             | 0                               | ALPHA                           | 9999999999999999999999999999999 | -10                             | 9999999999999999999999999999999 | ALPHA                           |
| Spinach(Spinachi)         | 2012/02/02 | Grade 1 | $10                             | -10                             | 9999999999999999999999999999999 | 0                               | ALPHA                           | 0                               | $10                             | $10                             |
| Spinach(Spinachi)         | 02/30/2012 | Grade 1 | -10                             | ALPHA                           | $10                             | 9999999999999999999999999999999 | 0                               | 10.1                            | 1                               | 9999999999999999999999999999999 |
| Spinach(Spinachi)         | 04/31/2012 | Grade 1 | 0                               | 10.1                            | -10                             | -10                             | 9999999999999999999999999999999 | $10                             | ALPHA                           | 0                               |
| Spinach(Spinachi)         | 06/31/2012 | Grade 1 | 1                               | 0                               | ALPHA                           | ALPHA                           | 10.1                            | 9999999999999999999999999999999 | 0                               | -10                             |
| Spinach(Spinachi)         | 09/31/2012 | Grade 1 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 1                               | $10                             | 9999999999999999999999999999999 | ALPHA                           | -10                             | 10.1                            |
| Spinach(Spinachi)         | 11/31/2012 | Grade 1 | 9999999999999999999999999999999 | ALPHA                           | 10.1                            | 0                               | 9999999999999999999999999999999 | 1                               | 9999999999999999999999999999999 | 0                               |
| Spinach(Spinachi)         | 02/29/2011 | Grade 1 | $10                             | 9999999999999999999999999999999 | ALPHA                           | 1                               | 1                               | 10.1                            | 9999999999999999999999999999999 | ALPHA                           |
| Spinach(Spinachi)         | ALPHA      | Grade 1 | $10                             | 0                               | -10                             | 9999999999999999999999999999999 | $10                             | 1                               | ALPHA                           | 10.1                            |
| Spinach(Spinachi)         | 02&02&2012 | Grade 1 | $10                             | 1                               | 10.1                            | 9999999999999999999999999999999 | 10.1                            | -10                             | $10                             | 1                               |
| Maize(mahindi)            | 02/02/2012 | Grade 3 | $10                             | 10.1                            | 9999999999999999999999999999999 | ALPHA                           | -10                             | $10                             | 0                               | 9999999999999999999999999999999 |
| Maize(mahindi)            | 02/02/12   | Grade 2 | 10.1                            | ALPHA                           | 1                               | 9999999999999999999999999999999 | $10                             | 0                               | -10                             | -10                             |
| Maize(mahindi)            | 02/02      | Grade 1 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | $10                             | -10                             | ALPHA                           | 1                               | 10.1                            | $10                             |
| Maize(mahindi)            | 2012/02/02 | Grade 3 | ALPHA                           | 1                               | 0                               | $10                             | 1                               | 9999999999999999999999999999999 | 1                               | 0                               |
| Maize(mahindi)            | 02/30/2012 | Grade 3 | 0                               | -10                             | 10.1                            | 1                               | 9999999999999999999999999999999 | ALPHA                           | $10                             | 0                               |
| Maize(mahindi)            | 04/31/2012 | Grade 3 | -10                             | 0                               | 1                               | 10.1                            | 10.1                            | 9999999999999999999999999999999 | 9999999999999999999999999999999 | ALPHA                           |
| Maize(mahindi)            | 06/31/2012 | Grade 3 | $10                             | $10                             | -10                             | 10.1                            | 0                               | 0                               | 10.1                            | 1                               |
| Maize(mahindi)            | 09/31/2012 | Grade 3 | 1                               | ALPHA                           | -10                             | 9999999999999999999999999999999 | 10.1                            | $10                             | ALPHA                           | $10                             |
| Maize(mahindi)            | 11/31/2012 | Grade 3 | ALPHA                           | $10                             | ALPHA                           | -10                             | $10                             | 0                               | $10                             | 10.1                            |
| Maize(mahindi)            | 02/29/2011 | Grade 3 | 10.1                            | -10                             | ALPHA                           | 0                               | -10                             | $10                             | 1                               | 1                               |
| Maize(mahindi)            | ALPHA      | Grade 3 | 10.1                            | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 1                               | 0                               | $10                             | $10                             | ALPHA                           |
| Maize(mahindi)            | 02&02&2012 | Grade 3 | 10.1                            | 9999999999999999999999999999999 | 0                               | ALPHA                           | 1                               | 10.1                            | ALPHA                           | $10                             |
| Cassava(Muhogo)           | 02/02/2012 | Grade 3 | 10.1                            | 0                               | ALPHA                           | $10                             | 9999999999999999999999999999999 | 10.1                            | $10                             | $10                             |
| Cassava(Muhogo)           | 02/02/12   | Grade 2 | $10                             | $10                             | 9999999999999999999999999999999 | ALPHA                           | 1                               | 9999999999999999999999999999999 | 10.1                            | 10.1                            |
| Cassava(Muhogo)           | 02/02      | Grade 1 | ALPHA                           | 10.1                            | 1                               | 1                               | ALPHA                           | $10                             | -10                             | 9999999999999999999999999999999 |
| Cassava(Muhogo)           | 2012/02/02 | Grade 3 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | -10                             | ALPHA                           | 0                               | ALPHA                           | 9999999999999999999999999999999 | 1                               |
| Cassava(Muhogo)           | 02/30/2012 | Grade 3 | 1                               | 9999999999999999999999999999999 | 0                               | 10.1                            | 10.1                            | 0                               | ALPHA                           | -10                             |
| Cassava(Muhogo)           | 04/31/2012 | Grade 3 | 9999999999999999999999999999999 | -10                             | 10.1                            | 9999999999999999999999999999999 | $10                             | 1                               | 0                               | ALPHA                           |
| Cassava(Muhogo)           | 06/31/2012 | Grade 3 | -10                             | 1                               | $10                             | 0                               | 1                               | -10                             | ALPHA                           | 0                               |
| Cassava(Muhogo)           | 09/31/2012 | Grade 3 | ALPHA                           | ALPHA                           | ALPHA                           | -10                             | -10                             | 9999999999999999999999999999999 | 10.1                            | ALPHA                           |
| Cassava(Muhogo)           | 11/31/2012 | Grade 3 | $10                             | 10.1                            | 0                               | -10                             | 0                               | 9999999999999999999999999999999 | 1                               | -10                             |
| Cassava(Muhogo)           | 02/29/2011 | Grade 3 | 0                               | ALPHA                           | $10                             | $10                             | ALPHA                           | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 10.1                            |
| Cassava(Muhogo)           | ALPHA      | Grade 3 | -10                             | 9999999999999999999999999999999 | 10.1                            | ALPHA                           | ALPHA                           | 0                               | 0                               | 9999999999999999999999999999999 |
| Cassava(Muhogo)           | 02&02&2012 | Grade 3 | -10                             | ALPHA                           | 9999999999999999999999999999999 | 1                               | $10                             | 9999999999999999999999999999999 | 1                               | 10.1                            |
| Sweet potato(ViaziVitamu) | 02/02/2012 | Grade 3 | -10                             | ALPHA                           | 0                               | 9999999999999999999999999999999 | ALPHA                           | 1                               | $10                             | -10                             |
| Sweet potato(ViaziVitamu) | 02/02/12   | Grade 2 | 1                               | -10                             | $10                             | $10                             | 9999999999999999999999999999999 | ALPHA                           | 1                               | ALPHA                           |
| Sweet potato(ViaziVitamu) | 02/02      | Grade 1 | 0                               | $10                             | 10.1                            | 9999999999999999999999999999999 | -10                             | 10.1                            | 0                               | 1                               |
| Sweet potato(ViaziVitamu) | 2012/02/02 | Grade 3 | 9999999999999999999999999999999 | 0                               | 1                               | -10                             | -10                             | -10                             | ALPHA                           | 9999999999999999999999999999999 |
| Sweet potato(ViaziVitamu) | 02/30/2012 | Grade 3 | ALPHA                           | 10.1                            | 9999999999999999999999999999999 | ALPHA                           | 1                               | -10                             | -10                             | $10                             |
| Sweet potato(ViaziVitamu) | 04/31/2012 | Grade 3 | $10                             | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 1                               | 10.1                            | 0                               | 10.1                            | -10                             |
| Sweet potato(ViaziVitamu) | 06/31/2012 | Grade 3 | 10.1                            | ALPHA                           | ALPHA                           | $10                             | $10                             | ALPHA                           | 9999999999999999999999999999999 | $10                             |
| Sweet potato(ViaziVitamu) | 09/31/2012 | Grade 3 | $10                             | $10                             | $10                             | 1                               | -10                             | 0                               | -10                             | 0                               |
| Sweet potato(ViaziVitamu) | 11/31/2012 | Grade 3 | 10.1                            | 1                               | $10                             | 9999999999999999999999999999999 | 0                               | ALPHA                           | 9999999999999999999999999999999 | 9999999999999999999999999999999 |
| Sweet potato(ViaziVitamu) | 02/29/2011 | Grade 3 | -10                             | 10.1                            | -10                             | $10                             | 9999999999999999999999999999999 | 0                               | $10                             | $10                             |
| Sweet potato(ViaziVitamu) | ALPHA      | Grade 3 | 0                               | ALPHA                           | ALPHA                           | 10.1                            | 1                               | 9999999999999999999999999999999 | 10.1                            | 0                               |
| Sweet potato(ViaziVitamu) | 02&02&2012 | Grade 3 | 0                               | $10                             | 1                               | 0                               | ALPHA                           | $10                             | 10.1                            | ALPHA                           |
| Beans(Maharage)           | 02/02/2012 | Grade 3 | 0                               | $10                             | 10.1                            | 10.1                            | 0                               | -10                             | -10                             | 9999999999999999999999999999999 |
| Beans(Maharage)           | 02/02/12   | Grade 2 | -10                             | 10.1                            | -10                             | 1                               | ALPHA                           | 10.1                            | 9999999999999999999999999999999 | 1                               |
| Beans(Maharage)           | 02/02      | Grade 1 | 1                               | 0                               | ALPHA                           | $10                             | 10.1                            | 9999999999999999999999999999999 | $10                             | 0                               |
| Beans(Maharage)           | 2012/02/02 | Grade 3 | 9999999999999999999999999999999 | ALPHA                           | $10                             | 9999999999999999999999999999999 | $10                             | 1                               | 0                               | ALPHA                           |
| Beans(Maharage)           | 02/30/2012 | Grade 3 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 1                               | ALPHA                           | -10                             | 1                               | $10                             | $10                             |
| Beans(Maharage)           | 04/31/2012 | Grade 3 | 10.1                            | 1                               | 0                               | $10                             | 9999999999999999999999999999999 | $10                             | 10.1                            | -10                             |
| Beans(Maharage)           | 06/31/2012 | Grade 3 | ALPHA                           | 10.1                            | 9999999999999999999999999999999 | -10                             | ALPHA                           | ALPHA                           | 1                               | ALPHA                           |
| Beans(Maharage)           | 09/31/2012 | Grade 3 | $10                             | -10                             | 0                               | 10.1                            | ALPHA                           | 1                               | ALPHA                           | 9999999999999999999999999999999 |
| Beans(Maharage)           | 11/31/2012 | Grade 3 | -10                             | -10                             | -10                             | ALPHA                           | 1                               | 0                               | 1                               | ALPHA                           |
| Beans(Maharage)           | 02/29/2011 | Grade 3 | 1                               | $10                             | 10.1                            | 9999999999999999999999999999999 | 0                               | ALPHA                           | 9999999999999999999999999999999 | 10.1                            |
| Beans(Maharage)           | ALPHA      | Grade 3 | 1                               | -10                             | $10                             | -10                             | 9999999999999999999999999999999 | 10.1                            | 10.1                            | 1                               |
| Beans(Maharage)           | 02&02&2012 | Grade 3 | 1                               | -10                             | -10                             | -10                             | -10                             | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 |
| Cassava(Muhogo)           | 2012/02/02 | Grade 3 | 1                               | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 1                               | 9999999999999999999999999999999 | 9999999999999999999999999999999 | -10                             | ALPHA                           |
| Spinach(Spinachi)         | 2012/02/02 | Grade 2 | 0                               | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 1                               | 1                               | 0                               | -10                             |
| Spinach(Spinachi)         | 06/31/2012 | Grade 3 | 0                               | 9999999999999999999999999999999 | 10.1                            | 9999999999999999999999999999999 | -10                             | $10                             | $10                             | 0                               |
| Beans(Maharage)           | 09/31/2012 | Grade 3 | -10                             | 10.1                            | 9999999999999999999999999999999 | 0                               | 10.1                            | ALPHA                           | $10                             | 10.1                            |
| Beans(Maharage)           | 09/31/2012 | Grade 1 | 10.1                            | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 0                               | -10                             | 0                               | $10                             |
| Maize(mahindi)            | 02/02      | Grade 2 | $10                             | 1                               | 9999999999999999999999999999999 | 0                               | $10                             | 0                               | ALPHA                           | $10                             |
| Sweet potato(ViaziVitamu) | 02/29/2011 | Grade 1 | -10                             | 1                               | 1                               | ALPHA                           | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 10.1                            | 0                               |
| Beans(Maharage)           | ALPHA      | Grade 2 | -10                             | 1                               | 9999999999999999999999999999999 | $10                             | 10.1                            | -10                             | -10                             | $10                             |
| Maize(mahindi)            | 02/30/2012 | Grade 1 | $10                             | 0                               | ALPHA                           | 0                               | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 10.1                            |
| Potatoes(Viazi)           | 02/29/2011 | Grade 2 | 0                               | 0                               | 9999999999999999999999999999999 | 10.1                            | $10                             | 9999999999999999999999999999999 | -10                             | -10                             |
| Potatoes(Viazi)           | 04/31/2012 | Grade 1 | 9999999999999999999999999999999 | $10                             | 9999999999999999999999999999999 | 9999999999999999999999999999999 | -10                             | 10.1                            | $10                             | 9999999999999999999999999999999 |
| Tomatoes(Nyanya)          | 11/31/2012 | Grade 1 | $10                             | 10.1                            | 1                               | 1                               | 9999999999999999999999999999999 | $10                             | 0                               | $10                             |
| Beans(Maharage)           | 06/31/2012 | Grade 2 | 10.1                            | 1                               | 0                               | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 1                               | -10                             | 9999999999999999999999999999999 |
| Maize(mahindi)            | 02/02/12   | Grade 2 | ALPHA                           | 0                               | 0                               | 1                               | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 1                               | 9999999999999999999999999999999 |
| Beans(Maharage)           | 11/31/2012 | Grade 2 | $10                             | $10                             | 0                               | 0                               | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 |
| Beans(Maharage)           | 02/02/2012 | Grade 2 | 0                               | $10                             | $10                             | -10                             | 9999999999999999999999999999999 | 9999999999999999999999999999999 | ALPHA                           | 10.1                            |
| Tomatoes(Nyanya)          | 02/02/12   | Grade 3 | 9999999999999999999999999999999 | 0                               | -10                             | -10                             | 10.1                            | -10                             | 9999999999999999999999999999999 | 9999999999999999999999999999999 |
| Sweet potato(ViaziVitamu) | 2012/02/02 | Grade 1 | 10.1                            | -10                             | 10.1                            | 10.1                            | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 9999999999999999999999999999999 |
| Cassava(Muhogo)           | 04/31/2012 | Grade 1 | 1                               | 1                               | $10                             | 9999999999999999999999999999999 | 1                               | -10                             | 1                               | $10                             |
| Cassava(Muhogo)           | 02/02      | Grade 3 | 0                               | 1                               | $10                             | 9999999999999999999999999999999 | 0                               | 9999999999999999999999999999999 | 1                               | 10.1                            |
| Tomatoes(Nyanya)          | 04/31/2012 | Grade 1 | 1                               | -10                             | 10.1                            | 1                               | 0                               | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 10.1                            |
| Maize(mahindi)            | 11/31/2012 | Grade 2 | $10                             | ALPHA                           | 0                               | 0                               | -10                             | 10.1                            | ALPHA                           | 1                               |
| Potatoes(Viazi)           | 02/02/12   | Grade 3 | 10.1                            | 10.1                            | -10                             | ALPHA                           | 0                               | 1                               | 9999999999999999999999999999999 | 0                               |
| Potatoes(Viazi)           | 02&02&2012 | Grade 1 | 1                               | 9999999999999999999999999999999 | $10                             | 10.1                            | 0                               | 0                               | 9999999999999999999999999999999 | 0                               |
| Maize(mahindi)            | 09/31/2012 | Grade 3 | 1                               | 1                               | 0                               | -10                             | ALPHA                           | -10                             | 9999999999999999999999999999999 | 9999999999999999999999999999999 |
| Potatoes(Viazi)           | 09/31/2012 | Grade 1 | 9999999999999999999999999999999 | 1                               | 10.1                            | 9999999999999999999999999999999 | ALPHA                           | 0                               | 1                               | 1                               |
| Potatoes(Viazi)           | ALPHA      | Grade 3 | 0                               | ALPHA                           | $10                             | $10                             | 10.1                            | 10.1                            | 0                               | 9999999999999999999999999999999 |
| Beans(Maharage)           | 11/31/2012 | Grade 1 | 9999999999999999999999999999999 | 0                               | 9999999999999999999999999999999 | 1                               | ALPHA                           | ALPHA                           | -10                             | 9999999999999999999999999999999 |
| Potatoes(Viazi)           | 02/30/2012 | Grade 2 | ALPHA                           | 10.1                            | 1                               | 9999999999999999999999999999999 | 9999999999999999999999999999999 | 1                               | 10.1                            | 1                               |
| Tomatoes(Nyanya)          | 02/02      | Grade 1 | 9999999999999999999999999999999 | ALPHA                           | 0                               | 9999999999999999999999999999999 | 10.1                            | 0                               | -10                             | 1                               |
| Cassava(Muhogo)           | 02/02/2012 | Grade 2 | 1                               | 9999999999999999999999999999999 | 1                               | -10                             | ALPHA                           | -10                             | 9999999999999999999999999999999 | 0                               |
| Sweet potato(ViaziVitamu) | 04/31/2012 | Grade 1 | 1                               | 9999999999999999999999999999999 | -10                             | 0                               | 1                               | 0                               | -10                             | 10.1                            |
