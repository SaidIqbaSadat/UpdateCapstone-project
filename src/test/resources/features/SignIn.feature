Feature: Sign In Feature 

@testCa1
Scenario: Verify user can sign in into Retail Application 

Given User is on retail website 
When User click on Sign in option 
And User enter email 'SaidI@gmail.com' and password 'Afgkbl@123' 
And User click on login button 
Then User should be logged in into Account 

 

 
@testca2
Scenario: Verify user can create an account into Retail Website 

Given User is on retail website 

When User click on Sign in option 

And User click on Create New Account button 

And User fill the signUp information with below data 

| name     | email                   | password  | confirmPassword | 

| Sadat | SadatSaidss@tekschool.us | Tek@5155e46 | Tek@5155e46      | 

And User click on SignUp button 

Then User should be logged into account page 