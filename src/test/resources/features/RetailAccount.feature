@AccountPagetest
Feature: Retail Account Page
  
  #Note: For this feature you have to have an account and be logged in into account. Repeated steps are under Background Keyword

  Background: 
    Given User is on retail website 
		When User click on Sign in option 
		And User enter email 'SadatSaids1@tekschool.us' and password 'Afgkbl@123' 
		And User click on login button 
		Then User should be logged in into Account 
    

	@personalInformationtest
  Scenario: Verify User can update Profile Information
    When User click on Account option
    And User update Name 'Sadat' and Phone '2456456'
    And User click on Update button
    Then user profile information should be updated

	@AddCardttest
  Scenario: Verify User can add a payment method
    When User click on Account option
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 0031561120183400 | Sadat      | 12        | 2022        | 546       |
    And User click on Add your card button
    Then a message should be displayed Payment Method added successfully
 	@Edittest
  Scenario: Verify User can edit Debit or Credit card
  	
    When User click on Account option
    When User click on added card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 0122333202000888      | Sadat      | 12           | 2022          | 546        |
    And user click on Update Your Card button
    Then a message should be displayed Payment Method updated Successfully
	@removedCardtest
  Scenario: Verify User can remove Debit or Credit card
    When User click on Account option
    When User click on added card
    And User click on remove option of card section
    Then payment details should be removed

	@AddAddresstest
  Scenario: Verify User can add an Address
    When User click on Account option
    And User click on Add address option
    And user fill new address form with below information
      | country | fullName | phoneNumber | streetAddress | apt   | city  | state | zipCode |
      | United States   | Said Iqbal Sadat    | 91645378901       |      119 Hills dale Blvd    | 1512 | Sacrmento | California | 95842   |
    And User click Add Your Address button
    Then a message should be displayed Address Added Successfully

	@editAddresstest
  Scenario: Verify User can edit an Address added on account
    When User click on Account option
    And User click on edit address option
    And user fill new address form with below information there
      | country | fullName | phoneNumber | streetAddress | apt   | city  | state | zipCode |
      |  United States  |Said Iqbal Sadat    | 91632323445       | 9555 Runchu village    | 1122 | Sacrmento | Californai | 98240   |
    And User click update Your Address button
    Then a message should be displayed Address Updated Successfully

	@removeAddresstest
  Scenario: Verify User can remove Address from Account
    When User click on Account option
    And User click on remove option of Address section
    Then Address details should be removed
