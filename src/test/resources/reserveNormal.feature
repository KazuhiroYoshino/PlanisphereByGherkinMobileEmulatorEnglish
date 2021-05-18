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

	Scenario: Normal member case
#				When Click Navigation button
        When Click link "Login"
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC026 Normal member stay plan test case
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
#TC026 BlackBerry PlayBook
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|
		|"Business trip"            |"Sunday"   |"9" |"2"       |"on"     |"off"         |"on"        |""      |"I don't need."|"" |""   |"off"   |"Single"            |"1662.50"|
		|"Economical"               |"Friday"   |"1" |"9"       |"off"    |"on"          |"off"       |""      |"I don't need."|"" |""   |"off"   |"choice room freely"|"630.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC027 Normal member stay plan test case
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
#TC027 Blackberry Z30
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Tuesday"|"9"   |"2"     |"on" |"on"                    |"on"            |""  |"By email"|""      |""      |"144chr"|"Single"    |"1265.00"|
		|"With private onsen"  |"Friday" |"3"   |"6"     |"off"|"off"                   |"on"            |""  |"By email"|""      |""      |"off"    |"choice room freely"|"1950.00"|
		|"With beauty salon"|"Tuesday"|"9"   |"6"     |"off"|"on"                    |"off"           |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"|"5190.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC028 Normal member stay plan test case
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
#TC028 Galaxy S5
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Saturday"|"9"   |"2"     |"on" |"off"                   |"on"            |""  |"By telephone"  |""      |""      |"off"    |"Single"    |"1300.00"|
		|"With dinner"      |"Tuesday" |"3"   |"4"     |"on" |"on"                    |"off"           |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"|"1180.00"|
		|"With beauty salon"|"Thursday"|"9"   |"6"     |"off"|"off"                   |"off"           |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"|"5130.00"|
		|"Economical"            |"Friday"  |"9"   |"9"     |"on" |"on"                    |"off"           |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"|"6165.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC029 Normal member stay plan test case
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
#TC029 iPad
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Saturday" |"1"   |"1"     |"on" |"off"                   |"on"            |""  |"By email"|""      |""      |"off"    |"Standard Twin"|"107.50"|
		|"Staying without meals"                |"Sunday"   |"1"   |"2"     |"on" |"on"                    |"off"           |""  |"By email"|""      |""      |"144chr"|"Single"          |"177.50"|
		|"With dinner"      |"Wednesday"|"1"   |"4"     |"on" |"off"                   |"on"            |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"      |"420.00"|
		|"With complimentary ticket"  |"Tuesday"  |"5"   |"9"     |"on" |"on"                    |"on"            |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"      |"5355.00"|
		|"Economical"            |"Thursday" |"9"   |"9"     |"off"|"off"                   |"on"            |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"      |"5220.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC030 Normal member stay plan test case
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
#TC030 iPad Mini
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"With private onsen"  |"Monday"   |"3"   |"1"     |"on" |"off"                   |"off"           |""  |"By email"|""      |""      |"144chr"|"choice room freely"    |"300.00"|
		|"For honeymoon"      |"Saturday" |"2"   |"2"     |"off"|"on"                    |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"Premium Twin"|"420.00"|
		|"With complimentary ticket"  |"Wednesday"|"5"   |"9"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"    |"5580.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC031 Normal member stay plan test case
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
#TC031 iPad Pro
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"With complimentary ticket"  |"Saturday"|"5"   |"1"     |"off"|"on"                    |"off"           |""  |"By email"|""      |""      |"144chr"|"choice room freely"    |"560.00"|
		|"For honeymoon"      |"Sunday"  |"2"   |"2"     |"on" |"on"                    |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"Premium Twin"|"420.00"|
		|"With dinner"      |"Thursday"|"3"   |"4"     |"on" |"on"                    |"on"            |""  |"By email"|""      |""      |"off"    |"choice room freely"    |"1305.00"|
		|"Economical"            |"Monday"  |"1"   |"9"     |"off"|"on"                    |"on"            |""  |"By email"|""      |""      |"off"    |"choice room freely"    |"720.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC032 Normal member stay plan test case
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
#TC032 iPhone 5
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"With dinner"      |"Thursday"|"3"   |"4"     |"off"|"off"                   |"off"           |""  |"By email"|""      |""      |"off"    |"choice room freely"|"1105.00"|
		|"With private onsen"  |"Saturday"|"1"   |"6"     |"off"|"off"                   |"off"           |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"|"675.00"|
		|"With complimentary ticket"  |"Saturday"|"5"   |"9"     |"on" |"off"                   |"off"           |""  |"By email"|""      |""      |"144chr"|"choice room freely"|"5400.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC033 Normal member stay plan test case
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
#TC033 iPhone 6/7/8
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Friday"  |"1"   |"1"     |"off"|"on"                    |"on"            |""  |"By email"|""      |""      |"144chr"|"Standard Twin"|"90.00"|
		|"For honeymoon"      |"Sunday"  |"2"   |"2"     |"off"|"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"Premium Twin"  |"400.00"|
		|"With dinner"      |"Saturday"|"1"   |"4"     |"on" |"off"                   |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"      |"465.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC034 Normal member stay plan test case
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
#TC034 iPhone 6/7/8 Plus
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Friday"  |"1"   |"1"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"Standard Twin"|"100.00"|
		|"Staying without meals"                |"Friday"  |"9"   |"1"     |"on" |"off"                   |"on"            |""  |"By telephone"  |""      |""      |"off"    |"Single"          |"636.25"|
		|"With dinner"      |"Thursday"|"3"   |"4"     |"on" |"off"                   |"off"           |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"      |"1225.00"|
		|"Economical"            |"Saturday"|"9"   |"9"     |"on" |"on"                    |"off"           |""  |"By email"|""      |""      |"144chr"|"choice room freely"      |"6300.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC035 Normal member stay plan test case
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
#TC035 iPhone X
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"With dinner"      |"Sunday"   |"3"   |"1"     |"off"|"off"                   |"off"           |""  |"By email"|""      |""      |"off"    |"choice room freely"      |"276.25"|
		|"Staying without meals"                |"Thursday" |"1"   |"2"     |"off"|"off"                   |"off"           |""  |"I don't need."      |""      |""      |"144chr"|"Single"          |"110.00"|
		|"Plan with special offers"    |"Wednesday"|"9"   |"9"     |"off"|"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Standard Twin"|"6075.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC036 Normal member stay plan test case
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
#TC036 KindleFire HDX
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"With dinner"      |"Tuesday"|"1"   |"4"     |"on" |"on"                    |"on"            |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"|"460.00"|
		|"Economical"            |"Monday" |"9"   |"9"     |"off"|"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"|"5310.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC037 Normal member stay plan test case
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
#TC037 Laptop with HiDPI screen
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"For honeymoon"      |"Friday"|"2"   |"2"     |"off"|"off"                   |"off"           |""  |"By email"|""      |""      |"off"    |"Premium Twin"|"360.00"|
		|"Staying without meals"                |"Sunday"|"9"   |"2"     |"on" |"off"                   |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Single"        |"1252.50"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC038 Normal member stay plan test case
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
#TC038 Laptop with touch screen
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Monday"|"1"   |"1"     |"off"|"off"                   |"off"           |""  |"By telephone"  |""      |""      |"off"    |"Single"    |"55.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC039 Normal member stay plan test case
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
#TC039 Microsoft Lumia950
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"For honeymoon"      |"Monday"  |"2"   |"2"     |"off"|"on"                    |"on"            |""  |"By email"|""      |""      |"144chr"|"Premium Twin"|"360.00"|
		|"With dinner"      |"Tuesday" |"3"   |"4"     |"off"|"on"                    |"off"           |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"    |"1060.00"|
		|"With beauty salon"|"Friday"  |"1"   |"6"     |"on" |"on"                    |"on"            |""  |"By email"|""      |""      |"off"    |"choice room freely"    |"720.00"|
		|"Economical"            |"Thursday"|"9"   |"9"     |"off"|"on"                    |"off"           |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"    |"5220.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC040 Normal member stay plan test case
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
#TC040 Moto G4
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Business trip"      |"Monday"  |"1"   |"1"     |"off"|"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"Single"    |"95.00"|
		|"With dinner"      |"Saturday"|"3"   |"4"     |"off"|"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"|"1230.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC041 Normal member stay plan test case
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
#TC041 Nexus 10
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Economical"            |"Saturday" |"9"   |"1"     |"off"|"off"                   |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"      |"610.00"|
		|"With beauty salon"|"Wednesday"|"9"   |"6"     |"off"|"off"                   |"off"           |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"      |"5130.00"|
		|"Plan with special offers"    |"Tuesday"  |"9"   |"9"     |"off"|"off"                   |"on"            |""  |"By email"|""      |""      |"144chr"|"Standard Twin"|"6075.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC042 Normal member stay plan test case
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
#TC042 Nexus 4
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Monday"   |"1"   |"1"     |"off"|"off"                   |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Standard Twin"|"70.00"|
		|"Business trip"      |"Thursday" |"1"   |"1"     |"on" |"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Single"          |"95.00"|
		|"With private onsen"  |"Wednesday"|"3"   |"6"     |"on" |"off"                   |"on"            |""  |"By email"|""      |""      |"off"    |"choice room freely"      |"1860.00"|
		|"Economical"            |"Thursday" |"1"   |"9"     |"off"|"on"                    |"on"            |""  |"By email"|""      |""      |"off"    |"choice room freely"      |"720.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC043 Normal member stay plan test case
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
#TC043 Nexus 5
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"With dinner"      |"Friday"|"3"   |"4"     |"off"|"off"                   |"off"           |""  |"I don't need."      |""      |""      |"off"    |"choice room freely"|"1190.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC044 Normal member stay plan test case
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
        Then wait "1" second

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC044 Nexus 5X
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Business trip"      |"Thursday" |"9"   |"1"     |"off"|"on"                    |"on"            |""  |"By email"|""      |""      |"off"    |"Single"    |"732.50"|
		|"Staying without meals"                |"Wednesday"|"9"   |"2"     |"off"|"off"                   |"off"           |""  |"By telephone"  |""      |""      |"off"    |"Single"    |"1045.00"|
		|"With dinner"      |"Friday"   |"3"   |"4"     |"off"|"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"|"1270.00"|
		|"With private onsen"  |"Sunday"   |"3"   |"6"     |"on" |"off"                   |"on"            |""  |"By email"|""      |""      |"off"    |"choice room freely"|"1995.00"|
		|"With complimentary ticket"  |"Tuesday"  |"5"   |"9"     |"on" |"on"                    |"on"            |""  |"By email"|""      |""      |"144chr"|"choice room freely"|"5355.00"|
		|"Economical"            |"Wednesday"|"9"   |"9"     |"off"|"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"|"5310.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC045 Normal member stay plan test case
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
#TC045 Nexus 6
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Business trip"      |"Thursday"|"9"   |"1"     |"off"|"off"                   |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Single"        |"712.50"|
		|"For honeymoon"      |"Saturday"|"2"   |"2"     |"on" |"off"                   |"off"           |""  |"By email"|""      |""      |"144chr"|"Premium Twin"|"440.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC046 Normal member stay plan test case
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
#TC046 Nexus 6P
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Economical"            |"Friday"|"9"   |"1"     |"off"|"on"                    |"on"            |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"    |"605.00"|
		|"For honeymoon"      |"Sunday"|"2"   |"2"     |"off"|"off"                   |"on"            |""  |"By email"|""      |""      |"144chr"|"Premium Twin"|"380.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC047 Normal member stay plan test case
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
#TC047 Nexus 7
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"With complimentary ticket"  |"Friday" |"1"   |"1"     |"off"|"off"                   |"off"           |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"|"100.00"|
		|"With complimentary ticket"  |"Tuesday"|"5"   |"1"     |"off"|"on"                    |"on"            |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"|"545.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC048 Normal member stay plan test case
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
#TC048 Nokia N9
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Sunday" |"1"   |"1"     |"on" |"on"                    |"off"           |""  |"I don't need."      |""      |""      |"off"    |"Single"    |"88.75"|
		|"Economical"            |"Tuesday"|"9"   |"9"     |"off"|"off"                   |"off"           |""  |"By telephone"  |""      |""      |"off"    |"choice room freely"|"5130.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC049 Normal member stay plan test case
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
#TC049 Pixel 2
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"For honeymoon"      |"Friday" |"2"   |"2"     |"off"|"on"                    |"on"            |""  |"By email"|""      |""      |"144chr"|"Premium Twin"|"400.00"|
		|"With dinner"      |"Tuesday"|"3"   |"4"     |"off"|"off"                   |"off"           |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"    |"1020.00"|

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
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC050 Normal member stay plan test case
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
#TC050 Pixel 2 XL
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|
		|"With private onsen"  |"Wednesday"|"3"   |"1"     |"off"|"on"                    |"off"           |""  |"By telephone"  |""      |""      |"144chr"|"choice room freely"|"280.00"|
		|"With dinner"      |"Monday"   |"3"   |"4"     |"on" |"on"                    |"on"            |""  |"I don't need."      |""      |""      |"144chr"|"choice room freely"|"1220.00"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second
