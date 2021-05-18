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

	Scenario: Guest user case
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC001 Guest user stay plan test case
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
#TC001 BlackBerryPlayBook
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With complimentary ticket"|"Thursday" |"5" |"1"       |"off"    |"on"          |"on"        |"HarunobuTakeda"|"By telephone"  |"12345678901"|""                   |"off"   |"choice room freely"|"570.00"|
		|"For honeymoon"            |"Friday"   |"2" |"2"       |"on"     |"on"          |"on"        |"MasatoraSanada"|"By telephone"  |"23456789012"|""                   |"144chr"|"Premium Twin"      |"440.00"|
		|"Staying without meals"    |"Saturday" |"9" |"2"       |"on"     |"off"         |"off"       |"KantaYamamoto" |"By email"      |""           |"kanta@example.com"  |"144chr"|"Single"            |"1280.00"|
		|"With beauty salon"        |"Monday"   |"1" |"6"       |"on"     |"off"         |"on"        |"NobukoTakeda"  |"By email"      |""           |"nobuko@example.com" |"off"   |"choice room freely"|"660.00"|
		|"Plan with special offers" |"Tuesday"  |"1" |"9"       |"on"     |"on"          |"off"       |"KagetoraNagao" |"By telephone"  |"34567890123"|""                   |"off"   |"Standard Twin"     |"810.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC002 Guest user stay plan test case
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
#TC002 BlackBerryZ30
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Monday"   |"1"   |"1"     |"off"|"off"                   |"off"           |"KazumasaUsami"|"I don't need."      |""           |""                            |"off"    |"Standard Twin"|"70.00"|
		|"For honeymoon"      |"Thursday" |"2"   |"2"     |"on" |"on"                    |"on"            |"AikoNaoe"  |"By email"|""           |"aiko@example.com"            |"144chr"|"Premium Twin"  |"400.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC003 Guest user stay plan test case
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
#TC003 GalaxyS5
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Business trip"      |"Saturday" |"1"   |"1"     |"off"|"off"                   |"on"            |"IetokiKakizaki"  |"By telephone"  |"45678901234"|""                            |"144chr"|"Single"          |"103.75"|
		|"With private onsen"  |"Sunday"   |"3"   |"1"     |"on" |"on"                    |"on"            |"HarunobuTakeda"  |"By telephone"  |"56789012345"|""                            |"off"    |"choice room freely"      |"342.50"|
		|"Plan with special offers"    |"Wednesday"|"9"   |"1"     |"off"|"on"                    |"off"           |"MasatoraSanada"  |"I don't need."      |""           |""                            |"off"    |"Standard Twin"|"675.00"|
		|"With complimentary ticket"  |"Friday"   |"5"   |"9"     |"on" |"on"                    |"off"           |"KantaYamamoto"  |"By email"|""           |"kanta@example.com"           |"144chr"|"choice room freely"      |"5490.00"|

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

	Scenario: Guest user case
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC004 Guest user stay plan test case
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
#TC004 iPad
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With private onsen"  |"Sunday"   |"3"   |"6"     |"off"|"off"                   |"off"           |"NobukoTakeda"  |"By email"|""           |"nobuko@example.com"          |"off"    |"choice room freely"      |"1755.00"|

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

	Scenario: Guest user case
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC005 Guest user stay plan test case
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
#TC005 iPad_Mini
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Friday"   |"1"   |"1"     |"on" |"on"                    |"off"           |"KagetoraNagao"  |"By telephone"  |"67890123456"|""                            |"off"    |"Single"          |"75.00"|
		|"Business trip"      |"Tuesday"  |"9"   |"2"     |"on" |"off"                   |"off"           |"KazumasaUsami"|"I don't need."      |""           |""                            |"144chr"|"Single"          |"1605.00"|
		|"Plan with special offers"    |"Saturday" |"1"   |"9"     |"off"|"off"                   |"off"           |"AikoNaoe"  |"By telephone"  |"78901234567"|""                            |"off"    |"Standard Twin"|"787.50"|

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

	Scenario: Guest user case
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC006 Guest user stay plan test case
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
#TC006 iPad_PRO
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Friday"   |"1"   |"2"     |"off"|"on"                    |"off"           |"IetokiKakizaki"  |"By email"|""           |"ietoki@example.com"          |"144chr"|"Single"          |"130.00"|
		|"Business trip"      |"Wednesday"|"9"   |"2"     |"off"|"on"                    |"off"           |"HarunobuTakeda"  |"I don't need."      |""           |""                            |"off"    |"Single"          |"1445.00"|
		|"With beauty salon"|"Tuesday"  |"9"   |"6"     |"off"|"on"                    |"off"           |"MasatoraSanada"  |"By email"|""           |"masatora@example.com"        |"144chr"|"choice room freely"      |"5190.00"|
		|"Plan with special offers"    |"Sunday"   |"1"   |"9"     |"off"|"on"                    |"off"           |"KantaYamamoto"  |"By email"|""           |"kanta@example.com"           |"off"    |"Standard Twin"|"877.50"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC007 Guest user stay plan test case
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
#TC007 iPhone_5
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Wednesday"|"1"   |"1"     |"off"|"off"                   |"off"           |"NobukoTakeda"  |"By telephone"  |"89012345678"|""                            |"144chr"|"Single"          |"55.00"|
		|"Business trip"      |"Friday"   |"9"   |"2"     |"off"|"off"                   |"off"           |"KagetoraNagao"  |"By telephone"  |"90123456789"|""                            |"off"    |"Single"          |"1462.50"|
		|"With beauty salon"|"Monday"   |"1"   |"6"     |"on" |"off"                   |"off"           |"KazumasaUsami"|"I don't need."      |""           |""                            |"144chr"|"choice room freely"      |"600.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC008 Guest user stay plan test case
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
#TC008 iPhone_678
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"    |"Wednesday"|"1" |"1"       |"off"    |"on"          |"on"        |"AikoNaoe"      |"By telephone"  |"01234567890"|""                   |"144chr"|"Single"            |"75.00"|
		|"Business trip"            |"Thursday" |"9" |"2"       |"on"     |"off"         |"off"       |"IetokiKakizaki"|"I don't need." |""           |""                   |"off"   |"Single"            |"1605.00"|
		|"With beauty salon"        |"Wednesday"|"9" |"6"       |"off"    |"on"          |"off"       |"HarunobuTakeda"|"By telephone"  |"12345678901"|""                   |"144chr"|"choice room freely"|"5190.00"|
		|"With complimentary ticket"|"Monday"   |"5" |"9"       |"off"    |"on"          |"on"        |"MasatoraSanada"|"I don't need." |""           |""                   |"off"   |"choice room freely"|"4680.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC009 Guest user stay plan test case
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
#TC009 iPhone_678_PLUS
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With beauty salon"|"Saturday" |"1"   |"6"     |"off"|"off"                   |"on"            |"KantaYamamoto"  |"By telephone"  |"23456789012"|""                            |"off"    |"choice room freely"      |"735.00"|
		|"With private onsen"  |"Saturday" |"1"   |"6"     |"off"|"off"                   |"off"           |"NobukoTakeda"  |"I don't need."      |""           |""                            |"off"    |"choice room freely"      |"675.00"|
		|"With complimentary ticket"  |"Monday"   |"5"   |"9"     |"off"|"on"                    |"off"           |"KagetoraNagao"  |"I don't need."      |""           |""                            |"off"    |"choice room freely"      |"4590.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC010 Guest user stay plan test case
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
#TC010 iPhone_X
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"For honeymoon"      |"Tuesday"  |"2"   |"2"     |"on" |"on"                    |"on"            |"KazumasaUsami"|"I don't need."      |""           |""                            |"144chr"|"Premium Twin"  |"400.00"|
		|"Business trip"      |"Thursday" |"9"   |"2"     |"on" |"off"                   |"on"            |"AikoNaoe"  |"By telephone"  |"34567890123"|""                            |"off"    |"Single"          |"1625.00"|
		|"With complimentary ticket"  |"Monday"   |"5"   |"9"     |"on" |"off"                   |"on"            |"IetokiKakizaki"  |"By email"|""           |"ietoki@example.com"          |"off"    |"choice room freely"      |"5040.00"|

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

	Scenario: Guest user case
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC011 Guest user stay plan test case
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
#TC011 KindleFireHDX
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Friday"   |"9"   |"1"     |"off"|"off"                   |"on"            |"HarunobuTakeda"  |"By telephone"  |"45678901234"|""                            |"off"    |"Single"          |"546.25"|
		|"Business trip"      |"Thursday" |"1"   |"2"     |"off"|"on"                    |"off"           |"MasatoraSanada"  |"By email"|""           |"masatora@example.com"        |"144chr"|"Single"          |"170.00"|
		|"For honeymoon"      |"Saturday" |"2"   |"2"     |"off"|"off"                   |"off"           |"KantaYamamoto"  |"By telephone"  |"56789012345"|""                            |"144chr"|"Premium Twin"  |"400.00"|
		|"With private onsen"  |"Sunday"   |"3"   |"6"     |"off"|"on"                    |"off"           |"NobukoTakeda"  |"I don't need."      |""           |""                            |"144chr"|"choice room freely"      |"1815.00"|

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

	Scenario: Guest user case
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC012 Guest user stay plan test case
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
#TC012 LaptopHiDPI
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Business trip"      |"Wednesday"|"9"   |"1"     |"on" |"on"                    |"off"           |"KagetoraNagao"  |"By telephone"  |"67890123456"|""                            |"off"    |"Single"          |"812.50"|
		|"With private onsen"  |"Saturday" |"3"   |"6"     |"on" |"off"                   |"on"            |"KazumasaUsami"|"I don't need."      |""           |""                            |"144chr"|"choice room freely"      |"2130.00"|
		|"With complimentary ticket"  |"Wednesday"|"5"   |"9"     |"on" |"on"                    |"on"            |"AikoNaoe"  |"I don't need."      |""           |""                            |"144chr"|"choice room freely"      |"5580.00"|

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

	Scenario: Guest user case
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC013 Guest user stay plan test case
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
#TC013 Laptoptouch
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With complimentary ticket"  |"Thursday" |"5"   |"1"     |"on" |"off"                   |"on"            |"IetokiKakizaki"  |"By email"|""           |"ietoki@example.com"          |"off"    |"choice room freely"      |"610.00"|
		|"With private onsen"  |"Saturday" |"3"   |"6"     |"off"|"on"                    |"on"            |"HarunobuTakeda"  |"I don't need."      |""           |""                            |"off"    |"choice room freely"      |"2010.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC014 Guest user stay plan test case
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
#TC014 MicrosoftLumia950
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Sunday"   |"9"   |"1"     |"off"|"off"                   |"on"            |"MasatoraSanada"  |"By telephone"  |"78901234567"|""                            |"off"    |"Standard Twin"|"692.50"|
		|"Staying without meals"                |"Wednesday"|"9"   |"1"     |"off"|"off"                   |"off"           |"KantaYamamoto"  |"By telephone"  |"89012345678"|""                            |"off"    |"Single"          |"522.50"|
		|"Business trip"      |"Saturday" |"9"   |"2"     |"on" |"off"                   |"off"           |"NobukoTakeda"  |"By email"|""           |"nobuko@example.com"          |"144chr"|"Single"          |"1680.00"|
		|"With private onsen"  |"Thursday" |"3"   |"6"     |"on" |"off"                   |"off"           |"KagetoraNagao"  |"By telephone"  |"90123456789"|""                            |"off"    |"choice room freely"      |"1935.00"|
		|"With complimentary ticket"  |"Sunday"   |"5"   |"9"     |"off"|"on"                    |"on"            |"KazumasaUsami"|"I don't need."      |""           |""                            |"144chr"|"choice room freely"      |"4905.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC015 Guest user stay plan test case
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
#TC015 MotoG4
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Wednesday"|"9"   |"1"     |"on" |"on"                    |"on"            |"AikoNaoe"  |"By telephone"  |"90123456789"|""                            |"144chr"|"Standard Twin"|"775.00"|
		|"Staying without meals"                |"Thursday" |"1"   |"2"     |"off"|"off"                   |"off"           |"IetokiKakizaki"  |"I don't need."      |""           |""                            |"144chr"|"Single"          |"110.00"|
		|"For honeymoon"      |"Thursday" |"2"   |"2"     |"on" |"off"                   |"on"            |"HarunobuTakeda"  |"By email"|""           |"harunobu@example.com"       |"off"    |"Premium Twin"  |"380.00"|
		|"With beauty salon"|"Sunday"   |"9"   |"6"     |"on" |"off"                   |"off"           |"MasatoraSanada"  |"By email"|""           |"masatora@example.com"        |"144chr"|"choice room freely"      |"5805.00"|

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

	Scenario: Guest user case
#				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC016 Guest user stay plan test case
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
#TC016 Nexus10
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Staying without meals"                |"Thursday" |"1"   |"2"     |"on" |"on"                    |"on"            |"KantaYamamoto"  |"I don't need."      |""           |""                            |"144chr"|"Single"          |"170.00"|
		|"For honeymoon"      |"Monday"   |"2"   |"2"     |"off"|"off"                   |"on"            |"NobukoTakeda"  |"By email"|""           |"nobuko@example.com"          |"off"    |"Premium Twin"  |"340.00"|
		|"Business trip"      |"Wednesday"|"9"   |"2"     |"off"|"on"                    |"off"           |"KagetoraNagao"  |"I don't need."      |""           |""                            |"off"    |"Single"          |"1445.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC017 Guest user stay plan test case
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
#TC017 Nexus4
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With beauty salon"|"Monday"   |"1"   |"1"     |"off"|"on"                    |"on"            |"KazumasaUsami"|"By email"|""           |"kazumasa@example.com"        |"144chr"|"choice room freely"      |"110.00"|
		|"Staying without meals"                |"Friday"   |"9"   |"1"     |"off"|"off"                   |"off"           |"AikoNaoe"  |"I don't need."      |""           |""                            |"off"    |"Single"          |"536.25"|
		|"For honeymoon"      |"Saturday" |"2"   |"2"     |"off"|"off"                   |"off"           |"IetokiKakizaki"  |"By telephone"  |"01234567890"|""                            |"off"    |"Premium Twin"  |"400.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC018 Guest user stay plan test case
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
#TC018 Nexus5
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"For honeymoon"      |"Wednesday"|"2"   |"2"     |"on" |"on"                    |"on"            |"HarunobuTakeda"  |"By email"|""           |"harunobu@example.com"        |"144chr"|"Premium Twin"  |"400.00"|
		|"With beauty salon"|"Saturday" |"1"   |"6"     |"off"|"off"                   |"off"           |"MasatoraSanada"  |"By email"|""           |"masatora@example.com"        |"off"    |"choice room freely"      |"675.00"|
		|"With private onsen"  |"Monday"   |"3"   |"6"     |"off"|"on"                    |"off"           |"KantaYamamoto"  |"By telephone"  |"12345678901"|""                            |"144chr"|"choice room freely"      |"1680.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC019 Guest user stay plan test case
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
#TC019 Nexus5X
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"For honeymoon"      |"Thursday" |"2"   |"2"     |"off"|"off"                   |"off"           |"NobukoTakeda"  |"By telephone"  |"23456789012"|""                            |"off"    |"Premium Twin"  |"320.00"|
		|"With beauty salon"|"Saturday" |"9"   |"6"     |"on" |"on"                    |"off"           |"KagetoraNagao"  |"By email"|""           |"kagetora@example.com"        |"144chr"|"choice room freely"      |"6000.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC020 Guest user stay plan test case
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
#TC020 Nexus6
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With beauty salon"|"Monday"   |"1"   |"1"     |"off"|"on"                    |"on"            |"KazumasaUsami"|"I don't need."      |""           |""                            |"off"    |"choice room freely"      |"110.00"|
		|"With complimentary ticket"  |"Tuesday"  |"5"   |"1"     |"off"|"on"                    |"off"           |"AikoNaoe"  |"By telephone"  |"34567890123"|""                            |"144chr"|"choice room freely"      |"535.00"|
		|"With private onsen"  |"Friday"   |"1"   |"6"     |"off"|"on"                    |"off"           |"IetokiKakizaki"  |"I don't need."      |""           |""                            |"off"    |"choice room freely"      |"600.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC021 Guest user stay plan test case
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
#TC021 Nexus6P
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Monday"   |"9"   |"1"     |"on" |"on"                    |"off"           |"HarunobuTakeda"  |"I don't need."      |""           |""                            |"off"    |"Standard Twin"|"765.00"|
		|"For honeymoon"      |"Saturday" |"1"   |"2"     |"off"|"off"                   |"off"           |"MasatoraSanada"  |"I don't need."      |""           |""                            |"off"    |"Premium Twin"  |"200.00"|
		|"With complimentary ticket"  |"Tuesday"  |"5"   |"9"     |"on" |"on"                    |"off"           |"KantaYamamoto"  |"By telephone"  |"45678901234"|""                            |"off"    |"choice room freely"      |"5265.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC022 Guest user stay plan test case
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
#TC022 Nexus7
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With beauty salon"|"Sunday"   |"9"   |"1"     |"on" |"on"                    |"off"           |"NobukoTakeda"  |"By telephone"  |"56789012345"|""                            |"off"    |"choice room freely"      |"977.50"|
		|"Business trip"      |"Tuesday"  |"1"   |"2"     |"on" |"off"                   |"off"           |"KagetoraNagao"  |"By telephone"  |"67890123456"|""                            |"off"    |"Single"          |"170.00"|
		|"Staying without meals"                |"Thursday" |"1"   |"2"     |"on" |"off"                   |"on"            |"KazumasaUsami"|"I don't need."      |""           |""                            |"144chr"|"Single"          |"150.00"|
		|"For honeymoon"      |"Sunday"   |"2"   |"2"     |"on" |"on"                    |"on"            |"AikoNaoe"  |"By email"|""           |"aiko@example.com"            |"144chr"|"Premium Twin"  |"440.00"|
		|"With private onsen"  |"Thursday" |"3"   |"6"     |"on" |"off"                   |"on"            |"IetokiKakizaki"  |"By telephone"  |"78901234567"|""                            |"144chr"|"choice room freely"      |"1995.00"|
		|"Plan with special offers"    |"Monday"   |"9"   |"9"     |"on" |"on"                    |"on"            |"HarunobuTakeda"  |"I don't need."      |""           |""                            |"144chr"|"Standard Twin"|"6975.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC023 Guest user stay plan test case
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
#TC023 NokiaN9
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With complimentary ticket"  |"Monday"   |"5"   |"1"     |"off"|"off"                   |"off"           |"MasatoraSanada"  |"By email"|""           |"masatora@example.com"        |"144chr"|"choice room freely"      |"500.00"|
		|"For honeymoon"      |"Thursday" |"2"   |"2"     |"on" |"off"                   |"off"           |"KantaYamamoto"  |"By telephone"  |"89012345678"|""                            |"144chr"|"Premium Twin"  |"360.00"|
		|"With beauty salon"|"Thursday" |"1"   |"6"     |"off"|"off"                   |"on"            |"NobukoTakeda"  |"By email"|""           |"nobuko@example.com"          |"144chr"|"choice room freely"      |"600.00"|
		|"With private onsen"  |"Friday"   |"3"   |"6"     |"on" |"on"                    |"on"            |"KagetoraNagao"  |"I don't need."      |""           |""                            |"144chr"|"choice room freely"      |"2190.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC024 Guest user stay plan test case
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
#TC024 Pixel2
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"Plan with special offers"    |"Monday"   |"9"   |"1"     |"on" |"on"                    |"off"           |"KazumasaUsami"|"By email"|""           |"kazumasa@example.com"        |"off"    |"Standard Twin"|"765.00"|
		|"Business trip"      |"Tuesday"  |"9"   |"2"     |"off"|"off"                   |"off"           |"AikoNaoe"  |"By telephone"  |"90123456789"|""                            |"144chr"|"Single"          |"1425.00"|
		|"With private onsen"  |"Sunday"   |"3"   |"6"     |"off"|"on"                    |"on"            |"IetokiKakizaki"  |"I don't need."      |""           |""                            |"144chr"|"choice room freely"      |"1875.00"|
		|"With complimentary ticket"  |"Wednesday"|"5"   |"9"     |"off"|"on"                    |"on"            |"HarunobuTakeda"  |"By email"|""           |"harunobu@example.com"        |"144chr"|"choice room freely"      |"5130.00"|

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

	Scenario: Guest user case
				When Click Navigation button
				When Click link "Reserve"
        Then wait "1" second

	Scenario Outline: TC025 Guest user stay plan test case
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
#TC025 Pixel2_XL
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact         |tel          |email                |Request |Room type           |Total price|
		|"With complimentary ticket"  |"Wednesday"|"5"   |"1"     |"off"|"off"                   |"off"           |"MasatoraSanada"  |"By email"|""           |"masatora@example.com"        |"off"    |"choice room freely"      |"550.00"|
		|"Business trip"      |"Sunday"   |"9"   |"1"     |"on" |"on"                    |"on"            |"KantaYamamoto"  |"I don't need."      |""           |""                            |"144chr"|"Single"          |"841.25"|
		|"Staying without meals"                |"Sunday"   |"9"   |"2"     |"off"|"off"                   |"off"           |"NobukoTakeda"  |"By email"|""           |"nobuko@example.com"          |"off"    |"Single"          |"1072.50"|
		|"With beauty salon"|"Tuesday"  |"9"   |"6"     |"on" |"off"                   |"on"            |"KagetoraNagao"  |"By telephone"  |"01234567890"|""                            |"off"    |"choice room freely"      |"5730.00"|
		|"Plan with special offers"    |"Friday"   |"9"   |"9"     |"off"|"on"                    |"on"            |"KazumasaUsami"|"I don't need."      |""           |""                            |"144chr"|"Standard Twin"|"6322.50"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        When close test scenario
        Then wait "3" second
