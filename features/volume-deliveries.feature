Feature: Volume Information

  As a market clerk
  I want to enter the volume when a delivery arrives.

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
    | Market1 | Wheat     | 10         | 10     | High    |

# TODOS:
# 1. Add date.
# 2. Add Swathi version of commodity
# 3. Add region/district/ward to market column.
# 4. Add error cases to unitWeight and volume.

