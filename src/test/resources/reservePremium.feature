#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
#language: en

Feature: Reserve feature

	Background: Quotation is different in weekend charge rise application depending on a day of the week in the stay first day and stay terms. An option is extra charge. The total quotation is decided by the stay terms, head counts, and the options.

	Scenario: open the top page by BlackBerryPlayBook Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"BlackBerryPlayBook" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Premium member case
#				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC051 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC051 BlackBerryPlayBook
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With private onsen"  |"Wednesday"|"3"   |"1"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"    |"320.00"|
		|"With dinner"      |"Wednesday"|"3"   |"4"     |"off"|"on"                    |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"    |"1060.00"|
		|"Premium plan"        |"Tuesday"  |"9"   |"9"     |"on" |"off"                   |"off"           |""  |"By email"|""      |""      |"144chr"|"Premium Twin"|"9360.00"|

	Scenario: return to home
#				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by BlackBerryZ30 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"BlackBerryZ30" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC052 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC052 BlackBerryZ30
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Economical"            |"Monday"   |"1"   |"1"     |"off"|"off"                   |"on"            |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"    |"70.00"|
		|"Business trip"      |"Wednesday"|"9"   |"1"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"Single"        |"822.50"|
		|"Premium plan"        |"Saturday" |"9"   |"2"     |"off"|"off"                   |"off"           |""  |"By email"|""      |""      |"off"    |"Premium Twin"|"2000.00"|
		|"With dinner"      |"Sunday"   |"3"   |"4"     |"off"|"off"                   |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"    |"1145.00"|
		|"With complimentary ticket"  |"Wednesday"|"5"   |"9"     |"on" |"off"                   |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"    |"5490.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by GalaxyS5 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"GalaxyS5" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC053 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC053 GalaxyS5
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"For honeymoon"      |"Monday"   |"2"   |"2"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"Premium Twin"|"400.00"|
		|"Premium plan"        |"Wednesday"|"1"   |"9"     |"off"|"on"                    |"on"            |""  |"I don't need."      |""      |""      |"off"    |"Premium Twin"|"1080.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by iPad Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"iPad" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
#				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC054 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC054 iPad
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Business trip"      |"Monday"   |"9"   |"1"     |"off"|"on"                    |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"Single"        |"722.50"|
		|"Premium plan"        |"Sunday"   |"1"   |"2"     |"off"|"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"Premium Twin"|"290.00"|
		|"For honeymoon"      |"Friday"   |"2"   |"2"     |"on" |"off"                   |"on"            |""  |"I don't need."      |""      |""      |"off"    |"Premium Twin"|"420.00"|
		|"With beauty salon"|"Sunday"   |"1"   |"6"     |"off"|"off"                   |"off"           |""  |"By email"|""      |""      |"off"    |"choice room freely"    |"675.00"|

	Scenario: return to home
#				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by iPad Mini Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"iPad_Mini" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
#				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC055 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC055 iPad_Mini
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Premium plan"        |"Friday"   |"9"   |"2"     |"on" |"off"                   |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"Premium Twin"|"2150.00"|
		|"With dinner"      |"Thursday" |"3"   |"4"     |"on" |"off"                   |"off"           |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"    |"1225.00"|
		|"With beauty salon"|"Sunday"   |"1"   |"6"     |"off"|"on"                    |"on"            |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"    |"795.00"|
		|"Economical"            |"Thursday" |"9"   |"9"     |"on" |"off"                   |"off"           |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"    |"5940.00"|

	Scenario: return to home
#				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by iPad PRO Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"iPad_PRO" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
#				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC056 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC056 iPad_PRO
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With private onsen"  |"Tuesday"  |"1"   |"6"     |"on" |"off"                   |"on"            |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"    |"660.00"|
		|"Premium plan"        |"Monday"   |"1"   |"9"     |"on" |"off"                   |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Premium Twin"|"990.00"|

	Scenario: return to home
#				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by iPhone 5 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"iPhone_5" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC057 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC057 iPhone_5
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Economical"            |"Tuesday"  |"1"   |"1"     |"on" |"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"      |"90.00"|
		|"Plan with special offers"    |"Wednesday"|"9"   |"1"     |"on" |"on"                    |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"Standard Twin"|"765.00"|
		|"Premium plan"        |"Saturday" |"1"   |"2"     |"off"|"off"                   |"off"           |""  |"I don't need."      |""      |""      |"144chr"|"Premium Twin"  |"250.00"|
		|"For honeymoon"      |"Sunday"   |"2"   |"2"     |"off"|"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"Premium Twin"  |"400.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by iPhone 678 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"iPhone_678" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC058 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>
				Then move to Logo

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC058 iPhone_678
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With private onsen"  |"Tuesday"  |"3"   |"1"     |"on" |"off"                   |"on"            |""  |"By email"|""      |""      |"144chr"|"choice room freely"    |"310.00"|
		|"Premium plan"        |"Thursday" |"9"   |"2"     |"on" |"on"                    |"off"           |""  |"By email"|""      |""      |"144chr"|"Premium Twin"|"2100.00"|
		|"Economical"            |"Friday"   |"9"   |"9"     |"on" |"on"                    |"on"            |""  |"By email"|""      |""      |"off"    |"choice room freely"    |"6255.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by iPhone 678 PLUS Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"iPhone_678_PLUS" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC059 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC059 iPhone_678_PLUS
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Business trip"      |"Sunday"   |"1"   |"2"     |"off"|"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"Single"        |"227.50"|
		|"For honeymoon"      |"Tuesday"  |"2"   |"2"     |"on" |"on"                    |"off"           |""  |"I don't need."      |""      |""      |"144chr"|"Premium Twin"|"380.00"|
		|"Premium plan"        |"Wednesday"|"9"   |"2"     |"off"|"off"                   |"off"           |""  |"By email"|""      |""      |"off"    |"Premium Twin"|"1900.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by iPhone X Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"iPhone_X" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC060 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC060 iPhone_X
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Economical"            |"Saturday" |"1"   |"1"     |"off"|"off"                   |"off"           |""  |"By email"|""      |""      |"144chr"|"choice room freely"    |"75.00"|
		|"With private onsen"  |"Tuesday"  |"3"   |"1"     |"off"|"on"                    |"on"            |""  |"By email"|""      |""      |"off"    |"choice room freely"    |"290.00"|
		|"With dinner"      |"Wednesday"|"1"   |"4"     |"on" |"on"                    |"on"            |""  |"By email"|""      |""      |"off"    |"choice room freely"    |"460.00"|
		|"With beauty salon"|"Friday"   |"9"   |"6"     |"off"|"off"                   |"on"            |""  |"By email"|""      |""      |"144chr"|"choice room freely"    |"5325.00"|
		|"Premium plan"        |"Saturday" |"1"   |"9"     |"on" |"off"                   |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"Premium Twin"|"1305.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by KindleFireHDX Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"KindleFireHDX" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
#				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC061 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC061 KindleFireHDX
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With complimentary ticket"  |"Thursday" |"5"   |"1"     |"on" |"off"                   |"on"            |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"      |"610.00"|
		|"Plan with special offers"    |"Friday"   |"9"   |"1"     |"on" |"on"                    |"on"            |""  |"By email"|""      |""      |"144chr"|"Standard Twin"|"792.50"|
		|"With beauty salon"|"Saturday" |"1"   |"6"     |"on" |"on"                    |"off"           |""  |"By email"|""      |""      |"off"    |"choice room freely"      |"795.00"|
		|"Premium plan"        |"Wednesday"|"1"   |"9"     |"off"|"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Premium Twin"  |"990.00"|

	Scenario: return to home
#				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by LaptopHiDPI Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"LaptopHiDPI" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
#				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC062 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC062 LaptopHiDPI
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Thursday" |"9"   |"1"     |"on" |"off"                   |"on"            |""  |"By telephone"  |""      |""      |"off"    |"Standard Twin"|"765.00"|
		|"Premium plan"        |"Friday"   |"9"   |"2"     |"off"|"off"                   |"on"            |""  |"By email"|""      |""      |"144chr"|"Premium Twin"  |"1970.00"|
		|"With dinner"      |"Monday"   |"3"   |"4"     |"off"|"on"                    |"on"            |""  |"By email"|""      |""      |"144chr"|"choice room freely"      |"1100.00"|
		|"With beauty salon"|"Tuesday"  |"9"   |"6"     |"on" |"on"                    |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"      |"5730.00"|
		|"Economical"            |"Sunday"   |"1"   |"9"     |"off"|"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"      |"765.00"|

	Scenario: return to home
#				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by Laptoptouch Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"Laptoptouch" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
#				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC063 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC063 Laptoptouch
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Economical"            |"Wednesday"|"9"   |"1"     |"on" |"off"                   |"off"           |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"      |"660.00"|
		|"Business trip"      |"Friday"   |"1"   |"2"     |"on" |"off"                   |"on"            |""  |"By telephone"  |""      |""      |"off"    |"Single"          |"190.00"|
		|"For honeymoon"      |"Tuesday"  |"2"   |"2"     |"off"|"off"                   |"off"           |""  |"By email"|""      |""      |"off"    |"Premium Twin"  |"320.00"|
		|"With dinner"      |"Wednesday"|"3"   |"4"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"      |"1220.00"|
		|"With beauty salon"|"Sunday"   |"9"   |"6"     |"off"|"off"                   |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"      |"5325.00"|
		|"Premium plan"        |"Tuesday"  |"1"   |"9"     |"on" |"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"Premium Twin"  |"1170.00"|
		|"Plan with special offers"    |"Saturday" |"9"   |"9"     |"on" |"off"                   |"off"           |""  |"By email"|""      |""      |"144chr"|"Standard Twin"|"7110.00"|

	Scenario: return to home
#				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by MicrosoftLumia950 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"MicrosoftLumia950" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC064 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC064 MicrosoftLumia950
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Premium plan"        |"Friday"   |"1"   |"9"     |"on" |"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"Premium Twin"|"1170.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by MotoG4 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"MotoG4" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC065 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC065 MotoG4
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With private onsen"  |"Sunday"   |"3"   |"1"     |"off"|"off"                   |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"    |"302.50"|
		|"Premium plan"        |"Monday"   |"1"   |"2"     |"off"|"on"                    |"on"            |""  |"By telephone"  |""      |""      |"off"    |"Premium Twin"|"240.00"|
		|"Economical"            |"Friday"   |"1"   |"9"     |"off"|"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"    |"630.00"|
		|"With complimentary ticket"  |"Tuesday"  |"5"   |"9"     |"off"|"on"                    |"off"           |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"    |"4815.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by Nexus10 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"Nexus10" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
#				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC066 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC066 Nexus10
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With private onsen"  |"Thursday" |"3"   |"1"     |"off"|"on"                    |"on"            |""  |"By email"|""      |""      |"off"    |"choice room freely"    |"312.50"|
		|"With complimentary ticket"  |"Sunday"   |"5"   |"1"     |"off"|"off"                   |"off"           |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"    |"525.00"|
		|"With dinner"      |"Friday"   |"3"   |"4"     |"on" |"off"                   |"off"           |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"    |"1310.00"|
		|"Premium plan"        |"Friday"   |"1"   |"9"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"Premium Twin"|"1170.00"|

	Scenario: return to home
#				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by Nexus4 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"Nexus4" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC067 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>
				Then move to Logo

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC067 Nexus4
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With dinner"      |"Tuesday"  |"1"   |"4"     |"on" |"off"                   |"off"           |""  |"By email"|""      |""      |"off"    |"choice room freely"    |"380.00"|
		|"Premium plan"        |"Sunday"   |"1"   |"9"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"Premium Twin"|"1395.00"|
		|"With complimentary ticket"  |"Monday"   |"5"   |"9"     |"off"|"on"                    |"on"            |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"    |"4680.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by Nexus5 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"Nexus5" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC068 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC068 Nexus5
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With complimentary ticket"  |"Tuesday"  |"5"   |"1"     |"off"|"on"                    |"off"           |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"      |"535.00"|
		|"Staying without meals"                |"Sunday"   |"9"   |"1"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"off"    |"Single"          |"646.25"|
		|"Business trip"      |"Thursday" |"9"   |"2"     |"on" |"off"                   |"off"           |""  |"I don't need."      |""      |""      |"144chr"|"Single"          |"1605.00"|
		|"Economical"            |"Saturday" |"1"   |"9"     |"on" |"off"                   |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"      |"765.00"|
		|"Plan with special offers"    |"Monday"   |"9"   |"9"     |"off"|"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"Standard Twin"|"6165.00"|
		|"Premium plan"        |"Thursday" |"9"   |"9"     |"on" |"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Premium Twin"  |"9450.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by Nexus5X Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"Nexus5X" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC069 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC069 Nexus5X
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Monday"   |"1"   |"1"     |"off"|"off"                   |"on"            |""  |"I don't need."      |""      |""      |"off"    |"Standard Twin"|"80.00"|
		|"Premium plan"        |"Saturday" |"9"   |"9"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"Premium Twin"  |"9990.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by Nexus6 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"Nexus6" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC070 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC070 Nexus6
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Monday"   |"1"   |"1"     |"on" |"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Single"          |"75.00"|
		|"Economical"            |"Thursday" |"9"   |"1"     |"off"|"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"      |"580.00"|
		|"Premium plan"        |"Saturday" |"9"   |"2"     |"off"|"on"                    |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"Premium Twin"  |"2020.00"|
		|"With dinner"      |"Wednesday"|"3"   |"4"     |"off"|"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"      |"1060.00"|
		|"Plan with special offers"    |"Sunday"   |"9"   |"9"     |"off"|"off"                   |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"Standard Twin"|"6142.50"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by Nexus6P Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"Nexus6P" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC071 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC071 Nexus6P
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Thursday" |"1"   |"1"     |"on" |"off"                   |"off"           |""  |"By telephone"  |""      |""      |"off"    |"Single"        |"65.00"|
		|"Business trip"      |"Monday"   |"9"   |"1"     |"off"|"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Single"        |"722.50"|
		|"Premium plan"        |"Sunday"   |"9"   |"2"     |"on" |"on"                    |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"Premium Twin"|"2150.00"|
		|"With dinner"      |"Monday"   |"3"   |"4"     |"off"|"on"                    |"off"           |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"    |"1060.00"|
		|"With private onsen"  |"Thursday" |"3"   |"6"     |"on" |"off"                   |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"    |"1935.00"|
		|"With beauty salon"|"Wednesday"|"9"   |"6"     |"on" |"on"                    |"on"            |""  |"By email"|""      |""      |"144chr"|"choice room freely"    |"5790.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by Nexus7 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"Nexus7" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC072 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC072 Nexus7
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Premium plan"        |"Wednesday"|"9"   |"2"     |"on" |"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"Premium Twin"|"2120.00"|
		|"With dinner"      |"Saturday" |"1"   |"4"     |"off"|"off"                   |"on"            |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"    |"465.00"|
		|"Economical"            |"Wednesday"|"9"   |"9"     |"off"|"off"                   |"off"           |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"    |"5130.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by NokiaN9 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"NokiaN9" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC073 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC073 NokiaN9
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Wednesday"|"1"   |"1"     |"on" |"off"                   |"off"           |""  |"By email"|""      |""      |"off"    |"Standard Twin"|"80.00"|
		|"Business trip"      |"Saturday" |"9"   |"1"     |"off"|"off"                   |"off"           |""  |"By email"|""      |""      |"off"    |"Single"          |"750.00"|
		|"Premium plan"        |"Sunday"   |"9"   |"2"     |"on" |"off"                   |"on"            |""  |"I don't need."      |""      |""      |"off"    |"Premium Twin"  |"2150.00"|
		|"With dinner"      |"Saturday" |"1"   |"4"     |"off"|"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"      |"505.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by Pixel2 Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"Pixel2" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC074 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC074 Pixel2
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Saturday" |"1"   |"2"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"off"    |"Single"        |"197.50"|
		|"With beauty salon"|"Thursday" |"1"   |"6"     |"off"|"off"                   |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"    |"600.00"|
		|"Premium plan"        |"Tuesday"  |"1"   |"9"     |"off"|"on"                    |"on"            |""  |"By email"|""      |""      |"off"    |"Premium Twin"|"1080.00"|
		|"Economical"            |"Wednesday"|"9"   |"9"     |"off"|"off"                   |"on"            |""  |"By email"|""      |""      |"144chr"|"choice room freely"    |"5220.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second


	Scenario: open the top page by Pixel2 XL Emulator
    		When The browser is started in English mode
   			When The broeser set Mobile"Pixel2_XL" mode
      	Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
      	Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
      	Then wait "2" second

	Scenario: Normal member case
				When Click Navigation button
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC075 Premium member stay plan test case
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation

				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC075 Pixel2_XL
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Premium plan"        |"Saturday"  |"1"   |"2"     |"on" |"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Premium Twin"|"290.00"|
		|"For honeymoon"      |"Saturday"  |"2"   |"2"     |"off"|"off"                   |"on"            |""  |"By email"|""      |""      |"144chr"|"Premium Twin"|"420.00"|
		|"Economical"            |"Thursday"  |"1"   |"9"     |"off"|"off"                   |"off"           |""  |"By email"|""      |""      |"off"    |"choice room freely"    |"540.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second
