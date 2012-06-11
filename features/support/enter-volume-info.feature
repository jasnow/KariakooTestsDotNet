Feature: Volume Information

  * Overview of Data Input Process (5/27/2012 Email)
  * Volume
    * Market employees collect volume data on every crop that 
        enters the market as it enters
    * Volume form will be used to enter data for each occurrence 
        (possibly multiple times for each crop each day)
    * For now, we will assume that everything is measured in kilos
        but will adjust later as needed

  As a market clerk
  I want to enter volume summeries for the day by crop and quality

  Scenario Outline:
    Given that I am on home page
    And I can get to the volume entry page

    When I select the "commodity" as "<commodity>"
    And I enter the date <dateValue>
    And I enter the quality "<quality>"
    And I select the "region" as "<region>"
    And I select the "district" as "<district>"
    And I select the "ward" as "<ward>"
    And I enter the amount received <amount>

    And I push "Submit" button
    Then the response should succesfully

  Examples:
| commodity                  | dateValue  | quality | region         | district | ward     | amount                          |
| Potatoes(Viazi)            | 02/02/2012 | Grade 1 | Dar-es -Salaam | Skonge   | Mpwapwa  | 1                               |
| Potatoes(Viazi)            | 02/02/12   | Grade 2 | Mbeya          | Mwadui   | Kongwa   | 0                               |
| Potatoes(Viazi)            | 02/02      | Grade 3 | Iringa         | Nzega    | chalinze | -10                             |
| Potatoes(Viazi)            | 2012/02/02 | Grade 3 | Dodoma         | Kilosa   | ubena    | 10.1                            |
| Potatoes(Viazi)            | 02/30/2012 | Grade 3 | Mbeya          | Skonge   | ubena    | ALPHA                           |
| Potatoes(Viazi)            | 04/31/2012 | Grade 3 | Dar-es -Salaam | Mwadui   | ubena    | 9999999999999999999999999999999 |
| Potatoes(Viazi)            | 06/31/2012 | Grade 3 | Dodoma         | Nzega    | Kongwa   | 1                               |
| Potatoes(Viazi)            | 09/31/2012 | Grade 3 | Dodoma         | Mwadui   | Mpwapwa  | ALPHA                           |
| Potatoes(Viazi)            | 11/31/2012 | Grade 3 | Dodoma         | Skonge   | chalinze | 0                               |
| Potatoes(Viazi)            | 02/29/2011 | Grade 3 | Dodoma         | Kilosa   | chalinze | 9999999999999999999999999999999 |
| Potatoes(Viazi)            | ALPHA      | Grade 3 | Dodoma         | Kilosa   | Kongwa   | -10                             |
| Potatoes(Viazi)            | 02&02&2012 | Grade 3 | Dodoma         | Kilosa   | Mpwapwa  | 0                               |
| Tomatoes(Nyanya)           | 02/02/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | ALPHA                           |
| Tomatoes(Nyanya)           | 02/02/12   | Grade 1 | Iringa         | Kilosa   | ubena    | 1                               |
| Tomatoes(Nyanya)           | 02/02      | Grade 2 | Dar-es -Salaam | Kilosa   | chalinze | 10.1                            |
| Tomatoes(Nyanya)           | 2012/02/02 | Grade 2 | Iringa         | Skonge   | Kongwa   | 9999999999999999999999999999999 |
| Tomatoes(Nyanya)           | 02/30/2012 | Grade 2 | Dodoma         | Nzega    | Mpwapwa  | -10                             |
| Tomatoes(Nyanya)           | 04/31/2012 | Grade 2 | Mbeya          | Kilosa   | chalinze | 1                               |
| Tomatoes(Nyanya)           | 06/31/2012 | Grade 2 | Iringa         | Mwadui   | ubena    | 0                               |
| Tomatoes(Nyanya)           | 09/31/2012 | Grade 2 | Iringa         | Kilosa   | ubena    | ALPHA                           |
| Tomatoes(Nyanya)           | 11/31/2012 | Grade 2 | Iringa         | Kilosa   | Mpwapwa  | 10.1                            |
| Tomatoes(Nyanya)           | 02/29/2011 | Grade 2 | Iringa         | Nzega    | ubena    | ALPHA                           |
| Tomatoes(Nyanya)           | ALPHA      | Grade 2 | Iringa         | Nzega    | ubena    | 9999999999999999999999999999999 |
| Tomatoes(Nyanya)           | 02&02&2012 | Grade 2 | Iringa         | Nzega    | ubena    | 10.1                            |
| Potatoes(Viazi)            | 02/02/2012 | Grade 2 | Iringa         | Nzega    | chalinze | 0                               |
| Potatoes(Viazi)            | 02/02/12   | Grade 3 | Dodoma         | Nzega    | chalinze | ALPHA                           |
| Potatoes(Viazi)            | 02/02      | Grade 1 | Dodoma         | Mwadui   | chalinze | 9999999999999999999999999999999 |
| Potatoes(Viazi)            | 2012/02/02 | Grade 1 | Mbeya          | Nzega    | Mpwapwa  | -10                             |
| Potatoes(Viazi)            | 02/30/2012 | Grade 1 | Iringa         | Kilosa   | Kongwa   | 10.1                            |
| Potatoes(Viazi)            | 04/31/2012 | Grade 1 | Dodoma         | Nzega    | Kongwa   | ALPHA                           |
| Potatoes(Viazi)            | 06/31/2012 | Grade 1 | Mbeya          | Kilosa   | chalinze | 9999999999999999999999999999999 |
| Potatoes(Viazi)            | 09/31/2012 | Grade 1 | Mbeya          | Nzega    | chalinze | 10.1                            |
| Potatoes(Viazi)            | 11/31/2012 | Grade 1 | Mbeya          | Nzega    | ubena    | -10                             |
| Potatoes(Viazi)            | 02/29/2011 | Grade 1 | Mbeya          | Mwadui   | Kongwa   | 10.1                            |
| Potatoes(Viazi)            | ALPHA      | Grade 1 | Mbeya          | Mwadui   | chalinze | 0                               |
| Potatoes(Viazi)            | 02&02&2012 | Grade 1 | Mbeya          | Mwadui   | chalinze | -10                             |
| Spinach(Spinachi)          | 02/02/2012 | Grade 3 | Mbeya          | Mwadui   | Kongwa   | 9999999999999999999999999999999 |
| Spinach(Spinachi)          | 02/02/12   | Grade 2 | Dar-es -Salaam | Nzega    | Mpwapwa  | -10                             |
| Spinach(Spinachi)          | 02/02      | Grade 1 | Dodoma         | Skonge   | ubena    | ALPHA                           |
| Spinach(Spinachi)          | 2012/02/02 | Grade 3 | Iringa         | Kilosa   | chalinze | 0                               |
| Spinach(Spinachi)          | 02/30/2012 | Grade 3 | Dar-es -Salaam | Mwadui   | chalinze | 1                               |
| Spinach(Spinachi)          | 04/31/2012 | Grade 3 | Iringa         | Skonge   | Mpwapwa  | 10.1                            |
| Spinach(Spinachi)          | 06/31/2012 | Grade 3 | Dar-es -Salaam | Skonge   | Kongwa   | ALPHA                           |
| Spinach(Spinachi)          | 09/31/2012 | Grade 3 | Dar-es -Salaam | Skonge   | Kongwa   | -10                             |
| Spinach(Spinachi)          | 11/31/2012 | Grade 3 | Dar-es -Salaam | Mwadui   | Kongwa   | 9999999999999999999999999999999 |
| Spinach(Spinachi)          | 02/29/2011 | Grade 3 | Dar-es -Salaam | Skonge   | Mpwapwa  | 0                               |
| Spinach(Spinachi)          | ALPHA      | Grade 3 | Dar-es -Salaam | Skonge   | Mpwapwa  | 9999999999999999999999999999999 |
| Spinach(Spinachi)          | 02&02&2012 | Grade 3 | Dar-es -Salaam | Skonge   | Kongwa   | 9999999999999999999999999999999 |
| Maize(mahindi)             | 02/02/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 10.1                            |
| Maize(mahindi)             | 02/02/12   | Grade 2 | Iringa         | Skonge   | chalinze | 9999999999999999999999999999999 |
| Maize(mahindi)             | 02/02      | Grade 1 | Mbeya          | Nzega    | Kongwa   | 0                               |
| Maize(mahindi)             | 2012/02/02 | Grade 3 | Dar-es -Salaam | Mwadui   | Mpwapwa  | ALPHA                           |
| Maize(mahindi)             | 02/30/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Maize(mahindi)             | 04/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | -10                             |
| Maize(mahindi)             | 06/31/2012 | Grade 3 | Dodoma         | Kilosa   | Mpwapwa  | 10.1                            |
| Maize(mahindi)             | 09/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 1                               |
| Maize(mahindi)             | 11/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | ALPHA                           |
| Maize(mahindi)             | 02/29/2011 | Grade 3 | Dodoma         | Kilosa   | ubena    | -10                             |
| Maize(mahindi)             | ALPHA      | Grade 3 | Dodoma         | Kilosa   | ubena    | ALPHA                           |
| Maize(mahindi)             | 02&02&2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | ALPHA                           |
| Cassava(Muhogo)            | 02/02/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | -10                             |
| Cassava(Muhogo)            | 02/02/12   | Grade 2 | Iringa         | Nzega    | chalinze | 10.1                            |
| Cassava(Muhogo)            | 02/02      | Grade 1 | Mbeya          | Mwadui   | Mpwapwa  | 1                               |
| Cassava(Muhogo)            | 2012/02/02 | Grade 3 | Dar-es -Salaam | Skonge   | Kongwa   | 9999999999999999999999999999999 |
| Cassava(Muhogo)            | 02/30/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 0                               |
| Cassava(Muhogo)            | 04/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | ALPHA                           |
| Cassava(Muhogo)            | 06/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | -10                             |
| Cassava(Muhogo)            | 09/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Cassava(Muhogo)            | 11/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 1                               |
| Cassava(Muhogo)            | 02/29/2011 | Grade 3 | Dodoma         | Kilosa   | ubena    | 1                               |
| Cassava(Muhogo)            | ALPHA      | Grade 3 | Dodoma         | Kilosa   | ubena    | 10.1                            |
| Cassava(Muhogo)            | 02&02&2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 1                               |
| Sweet potato(Viazi Vitamu) | 02/02/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Sweet potato(Viazi Vitamu) | 02/02/12   | Grade 2 | Iringa         | Nzega    | chalinze | ALPHA                           |
| Sweet potato(Viazi Vitamu) | 02/02      | Grade 1 | Mbeya          | Mwadui   | Kongwa   | 10.1                            |
| Sweet potato(Viazi Vitamu) | 2012/02/02 | Grade 3 | Dar-es -Salaam | Skonge   | Mpwapwa  | 1                               |
| Sweet potato(Viazi Vitamu) | 02/30/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | -10                             |
| Sweet potato(Viazi Vitamu) | 04/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 0                               |
| Sweet potato(Viazi Vitamu) | 06/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Sweet potato(Viazi Vitamu) | 09/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 0                               |
| Sweet potato(Viazi Vitamu) | 11/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Sweet potato(Viazi Vitamu) | 02/29/2011 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Sweet potato(Viazi Vitamu) | ALPHA      | Grade 3 | Dodoma         | Kilosa   | ubena    | 1                               |
| Sweet potato(Viazi Vitamu) | 02&02&2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Beans(Maharage)            | 02/02/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Beans(Maharage)            | 02/02/12   | Grade 2 | Iringa         | Nzega    | chalinze | ALPHA                           |
| Beans(Maharage)            | 02/02      | Grade 1 | Mbeya          | Mwadui   | Kongwa   | 10.1                            |
| Beans(Maharage)            | 2012/02/02 | Grade 3 | Dar-es -Salaam | Skonge   | Mpwapwa  | -10                             |
| Beans(Maharage)            | 02/30/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 0                               |
| Beans(Maharage)            | 04/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 1                               |
| Beans(Maharage)            | 06/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Beans(Maharage)            | 09/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Beans(Maharage)            | 11/31/2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Beans(Maharage)            | 02/29/2011 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Beans(Maharage)            | ALPHA      | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
| Beans(Maharage)            | 02&02&2012 | Grade 3 | Dodoma         | Kilosa   | ubena    | 9999999999999999999999999999999 |
