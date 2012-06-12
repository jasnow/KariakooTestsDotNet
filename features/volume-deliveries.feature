Feature: Volume Information

  As a market clerk
  I want to enter the volume when a delivery arrives.

  TODOS:<p>
    1. Add date. (yes, see task for that)<p>
    2. Add Swathi version of commodity<p>
    3. Add region/district/ward to market column.<p>
    4. INTERNAL: Add blanks between variable in When lines.<p>
    5. Add error cases to unitWeight and volume. (Separate Story)<p>

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
    Then the response should succesfully

    #And I enter the date <dateValue>

  Examples:
    | market  | commodity | unitWeight | volume | quality |
    | Market1 | Wheat     | 1          | 1      | High    |
    | Market2 | Corn      | 2          | 2      | Medium  |
    | Market3 | Corn Oil  | 3          | 3      | Low     |
