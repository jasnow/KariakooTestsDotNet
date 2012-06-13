Feature: Volume Information

  As a market clerk<br>
  I want to enter the volume when a delivery arrives.

  LIMITATIONS:<br>
    1. Units are only KG.<br>
    2. Openingentry_page is not tested, only used.<br>
    3. Error cases (validation) to unitWeight and volume are not include. (Separate Story)<br>
<p>
  TODOS:<br>
    1. Add date. (yes, I see the task for that.)<br>
    2. Add Swathi version of commodity.<br>
    3. Add region/district/ward to market column.<br>
    4. INTERNAL: Add blanks between variable in When lines.<br>
    5. INTERNAL: How to delete the input after the test?

  @mechanize
  Scenario Outline:
    Given that I am on home page
    And I can get to the deliveries create page

    When I select the "MarketId" as "<market>"
    # NOTE: Market includes "region", "district", and "ward".
    And I select the "CommodityId" as "<commodity>"
    And I enter the "UnitWeight" as "<unitWeight>"
    And I enter the "UnitQuantity" as "<volume>"
    And I select the "QualityName" as "<quality>"
    And I push "Create" button
    Then the submitted page should contain "recorded"

    #And I enter the date <dateValue>

  Examples:
    | market  | commodity | unitWeight | volume | quality |
    | Market1 | Wheat     | 1          | 1      | High    |
    | Market2 | Corn      | 2          | 2      | Medium  |
    | Market3 | Corn Oil  | 3          | 3      | Low     |
