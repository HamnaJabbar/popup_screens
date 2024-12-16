@UIFeatures
Feature: UI Testing on Demo Website
#  @Pass1 @OpenInAnyDimension @Ignore
#  Scenario:Shouldnt run
#    When User navigate to 'https://github.com'
#    And User maximize the window
#    And User open browser in any dimension <400> x <400>
#    Then User close the browser

  @asadsaad3456
  Scenario: Checking Functionality of Username Filed Asad
    When User navigate to 'https://www.spectrum.com/mobile/products/phones'
    And User maximize the window
    And User scroll to 'Appium.charter1'
    And User wants to save numeric value of 'Appium.charter1' with key 'pricing'
    And User wants to save numeric value of 'Appium.charter1' with key 'pricing'
    And User verify that element 'Appium.charter2' have numeric text equal to value of 'pricing'



















    When User navigate to 'https://github.com'
    And User maximize the window
    And User scroll to 'Appium.sevenX'
    And User wants to save numeric value of 'Appium.gettExtgith' with key 'Asadraza'
#    And User wants to save numeric value of 'Appium.gettExtgith' with key 'Asadraza'
#    And User scroll to 'Appium.sevenX'
#    And User scroll to 'Appium.gettExtgith'
    And User verify that element 'Appium.gettExtgith' have numeric text equal to value of 'Asadraza'

  @abort1 @Ignorehave
  Scenario: Checking Functionality of Username Filed Asad
    When User navigate to 'https://google.com/'
    And User maximize the window
    And User wants to abort the scenario
    And User close the browser

  @abort1
  Scenario: Checking Functionality of Username Filed Asad
    When User navigate to 'https://github.com/'
    And User maximize the window
    And User close the browser


  @Graphql
  Scenario: : Sample
    When User creates  graphql variable with key 'countryCode' and value 'BR'
    When User sends 'query' graphql request in 'Sample' file with name 'Query' for endpoint "https://countries.trevorblades.com/graphql"
    And  User verify that status code should be <200>
    And  User verify that response had key 'emoji'
    And  User verify that response had key 'data.country.currency' with value 'BR'
#    When User sends 'mutation' graphql request in 'Sample' file with name 'CreateUser' for endpoint "https://countries.trevorblades.com/graphql"

  @FullScreenasad @Regression @Pass1
  Scenario: should run
    When User navigate to 'https://github.com'
    #When User navigate back
    And User maximize the window
#    And User switches to full screen
#    Then User close the browser
  @FullScreenasad @Regression @Pass1 @Ignore
  Scenario: should run
    When User navigate to 'https://amazon.com'
    #When User navigate back
    And User maximize the window


  @FullScreenasad @Regression @Pass1
  Scenario: should run
    When User navigate to 'https://facebook.com'
    And User maximize the window
#    And User switches to full screen
#    Then User close the browser



#    And User switches to full screen
#    Then User close the browser


  @FullScreen @Regression @Pass12
  Scenario: should run
    When User navigate to 'https://facebook.com'
    #And User verify that the URL of page should be "xts"
    And User maximize the window
    And User switches to full screen
#    Then User close the browser

#  @Sidebar  @Ignore @Pass1
#  Scenario: shouldnt run
#    When User navigate to 'https://the-internet.herokuapp.com/floating_menu'
#    And User maximize the window
#    And  User perform customized scrolling using side bar '1000' in px
#    Then User close the browser

#  @CLickAndOpenInNewTab @Pass1 @Ignore @Smoke
#  Scenario: shouldnt run
#    When User navigate to 'https://facebook.com'
#    And User maximize the window
#    And User wait until element 'github.price' is visible
#    Then User click on 'github.price' and it open in new tab
#    Then User close the browser
  @MySqL
  Scenario: User wants to connect with MySQL database
    Given User wants to connect with the database
    Then the database connection should be established successfully
    And User wants to get data from database with query 'SELECT * FROM Users WHERE ID = 2' for column "Username"

  @Postgress
  Scenario: User wants to connect with MySQL database
    Given User wants to connect with the database
    Then the database connection should be established successfully
    And User wants to get data from database with query 'SELECT * FROM Users WHERE ID = 1' for column "Username"

  @asad6778
  Scenario: Switch tab based on title with multiple same name
    When User navigate to 'https://www.facebook.com/'
    And User wait for <100> milliseconds
#    And User wants to run feature file '' with tags ''
    Then User opens a new tab with URL 'https://www.selenium.dev/'
    And User wait for <100> milliseconds
    Then User opens a new tab with URL 'https://google.com/'
    And User wait for <100> milliseconds
    Then User opens a new tab with URL 'https://en.wikipedia.org/wiki/Twitter/'
    And User wait for <100> milliseconds
    And User switches to another tab with matching pageTitle 'Google'
    And User wait for <100> milliseconds
    Then User verify that the title of page should be 'Google'
    Then User close the browser

  @asad6778
  Scenario: Checking Functionality of Username Filed Asad
    When User navigate to 'https://github.com/'
    And  User maximize the window
    And  If 'Demo.Username' is displayed
    And  User enter 'A' in 'Demo.Username' field
    And User clear the text from 'Demo.Username'
    And User wait for <5000> milliseconds
    And  User enter 'B' in 'Demo.Username' field
    And User clear the text from 'Demo.Username'
    And User wait for <5000> milliseconds
    And  User enter 'C' in 'Demo.Username' field
    And User clear the text from 'Demo.Username'
    And User wait for <5000> milliseconds
    And  User enter 'D' in 'Demo.Username' field
    And User clear the text from 'Demo.Username'
    And User wait for <5000> milliseconds
    And  User enter 'E' in 'Demo.Username' field
    And User clear the text from 'Demo.Username'
    And User wait for <5000> milliseconds
    And  User enter 'F' in 'Demo.Username' field
    And User clear the text from 'Demo.Username'
    And User wait for <5000> milliseconds
    And  User enter 'G' in 'Demo.Username' field
    And User clear the text from 'Demo.Username'
    And User wait for <5000> milliseconds
    And  User enter 'H' in 'Demo.Username' field
    And User clear the text from 'Demo.Username'
    And User wait for <5000> milliseconds
    Then User verify that the URL of page should be 'https://github.com/signup?user_email=abc%40gmail.com&source=f'
    And  else
    Then User verify that the URL of page should be 'https://github.com/signup?us'
    And end the condition block

  @asadraza
  Scenario: Checking Functionality of Username Filed Asad
    When User navigate to 'https://github.com/'
    And  User maximize the window
    And  User scroll to 'Demo.Username'
    And  User click on 'Demo.Username'
    And  User enter 'abc@gmail.com' in 'Demo.Username' field
    And  User Click on SignUp Button
    Then User verify that the URL of page should be 'https://github.com/signup?us'
#    And  User captures all the assertions

  @asad6778
  Scenario: Switch tab based on title with multiple same name
    When User navigate to 'https://www.facebook.com/'
    And User wait for <100> milliseconds
    Then User opens a new tab with URL 'https://www.selenium.dev/'
    And User wait for <100> milliseconds
    Then User opens a new tab with URL 'https://google.com/'
    And User wait for <100> milliseconds
    Then User opens a new tab with URL 'https://en.wikipedia.org/wiki/Twitter/'
    And User wait for <100> milliseconds
    And User switches to another tab with matching pageTitle 'Google'
    And User wait for <100> milliseconds
    Then User verify that the title of page should be 'Google'
    Then User close the browser

  @asad6778
  Scenario: Checking Functionality of Username Filed Asad
    When User navigate to 'https://google.com/'
    And  User maximize the window
    And  If 'Stellar.dattable' is displayed
    Then User verify that the URL of page should be 'https://github.com/signup?us'

  @asad67789
  Scenario: Checking Functionality of Username Filed Asad
    When User navigate to 'https://google.com/'
    And  User maximize the window
    And  If 'Stellar.dattable' is displayed
    Then User verify that the URL of page should be 'https://github.com/signup?us'
    And else
    Then User verify that the URL of page should be 'htt'
    And end the condition block

  @asad67789
  Scenario: Checking Functionality of Username Filed Asad
    When User navigate to 'https://google.com/'
    And  User maximize the window
    And  If 'Stellar.dattable' is displayed
    Then User verify that the URL of page should be 'https://github.com/signup?us'

  @asad67789
  Scenario: Checking Functionality of Username Filed Asad
    When User navigate to 'https://google.com/'
    And  User maximize the window
    And  If 'Stellar.dattable' is displayed
    Then User verify that the URL of page should be 'https://github.com/signup?us'
#
#  @Postgres
#  Scenario: User wants to connect with MySQL database
#    Given User wants to connect with the database
#    And User refresh the current page
#    Then the database connection should be established successfully
#    And User wants to get data from database with query 'SELECT * FROM users WHERE ID = 1' for column "username"
#
#  @SQL
#  Scenario: User wants to connect with MySQL database
#    Given User wants to connect with the database
#    Then the database connection should be established successfully
#    And User wants to get data from database with query 'SELECT * FROM users WHERE ID = 2' for column "username"
#
#  @Oracle
#  Scenario: User wants to connect with MySQL database
#    Given User wants to connect with the database
#    Then the database connection should be established successfully
#    And User wants to get data from database with query 'SELECT * FROM users WHERE ID = 2' for column "username"
#
  @MongoDB
  Scenario: User wants to connect with MySQL database
    Given User wants to connect with the database
    Then the database connection should be established successfully
    Given User wants to get data from MongoDB collection 'Table' with query "{ 'id': 1 }" for column "username"

  @asad67789
  Scenario: Switch tab based on title with multiple same name
    When User navigate to 'https://www.facebook.com/'
    And User wait for <100> milliseconds
    And User wants to run feature file '' with tags ''
    Then User opens a new tab with URL 'https://www.selenium.dev/'
    And User wait for <100> milliseconds
    Then User opens a new tab with URL 'https://google.com/'
    And User wait for <100> milliseconds
    Then User opens a new tab with URL 'https://en.wikipedia.org/wiki/Twitter/'
    And User wait for <100> milliseconds
    And User switches to another tab with matching pageTitle 'Google'
    And User wait for <100> milliseconds
    Then User verify that the title of page should be 'Google'
    Then User close the browser

  @asad67789
  Scenario: switch tab with matching URL
    When User navigate to 'https://github.com'
    And User wait for <100> milliseconds
    Then User opens a new tab with URL 'https://google.com'
    And User wait for <100> milliseconds
    Then User opens a new tab with URL 'https://github.com/pricing'
    And User wait for <100> milliseconds
    And User switches to another tab with matching URL 'https://www.google.com/'
    And User wait for <100> milliseconds
    And User wait until url 'https://www.google.com/' appears
    And User wait for <100> milliseconds
    Then User verify that the URL of page should be 'https://www.google.com/'
    Then User close the browser

  @Smoke679777
  Scenario: Verify a specific column value in a row
    When User navigate to 'https://ninjatables.com/examples-of-data-table-design-on-website/'
    Then User verify that the URL of page should be 'https://www.google.com/'
    And  User scroll to 'Stellar.dattable'
    When I validate the value in the specified column
      | locator                                                                              | locatorType| columnIndex | expectedValue   |
      | (//td[@class='ninja_column_0 ninja_clmn_nm_first_name footable-first-visible'])[1]   | xpath      | 3           | Account      |
    Then User close the browser
    And  User captures all the assertions


  @asad
  Scenario: Checking Functionality of Username Filed Asad
    When User navigate to 'https://github.com/'
#    Then User verify that the URL of page should be 'https://github.c'
    And  User maximize the window
#    And  If '' is displayed
    And  User scroll to 'Demo.Username'
    And  User click on 'Demo.Username'
    And  User enter 'abc@gmail.com' in 'Demo.Username' field
    And  User Click on SignUp Button
    Then User verify that the URL of page should be 'https://github.com/signup?user_email=abc%40gmail.com&source=f'
    Then User close the browser
    And  end the condition block
    And  User captures all the assertions

  @Smoke6794
  Scenario: Validate the Double click method
    When User navigate to 'https://omayo.blogspot.com/'
    And  User scroll to 'Stellar.dattable1'
    When I validate the value in the specified column
      | locator                             | locatorType   | columnIndex | expectedValue   |
      | //*[@id="table1"]/tbody/tr[1]/td[1] | xpath         | 3           | Delh          |
    Then User close the browser
    And  User captures all the assertions








#    And  User generate <4> digit random number
#    Given User wants to connect with the database
#    Then the database connection should be established successfully
#    And User wants to get data from database with query 'SELECT * FROM Users WHERE ID = 1' for column "Username"
#    And  User enters 'abc#{DATE+1}@gmail.com' and embed random number in 'Demo.Username' field
    And  User enter 'abc#{DB-Username}@gmail.com' in 'Demo.Username' field


#  @Smoke67
#  Scenario: Checking Functionality of Username Filed1
#    And  User navigates to 'https://google.com/' without creating new session
#    And  User Click on SignUp Button
#    Then User verify that the URL of page should be 'https://github.com/signup?user_email=abc%40gmail.com&source=form-home-signup'
#    Then User close the browser

  @Gmail
  Scenario: Checking Functionality of Username Filed
    When User navigate to 'https://mail.google.com/'
    And  User enter 'asadrazamahmood@gmail.com' in 'Stellar.gmailuser' field
    And  User click on 'Stellar.next'
    And  User wait until element 'Stellar.gmailpass' is visible
    And  User enter 'asad7777' in 'Stellar.gmailpass' field
    And  User click on 'Stellar.next'
#    And  User click on 'Stellar.continue'

  @asad11
  Scenario: Checking Functionality of Username Filed Asad
    When User navigate to 'https://github.com/'
    And  User maximize the window
    And  User wants to save text of 'Stellar.pricinggit' with key 'Asad'
#    And  User wants to save numeric value of 'Stellar.pricinggit' with key 'Asad'
#    And  User enters 'abc#{DATE+1}@gmail.com' in 'Demo.Username' field
    And  User wait for <3000> milliseconds
#    And  User enters 'abc#{RD-4}@gmail.com' in 'Demo.Username' field
#    And  User enters 'abc#{DB-Username}@gmail.com' in 'Demo.Username' field
    And  User enter '#{ST-Asad}' in 'Demo.Username' field
    And  User scroll to 'Demo.Username'
#    And  User click on 'Demo.Username'
#    And  User enter 'abc@gmail.com' in 'Demo.Username' field
    And  User Click on SignUp Button

  @Smokes
  Scenario: Opening and closing browser
    When User navigate to server 'GoogleApi' with endpoint 'API.new1'
    Then User verify that URL of page should be baseURI 'GoogleApi' with endpoint '/'
    Then User close the browser

  @Regression
  Scenario: Check Username filed validations
    When User navigate to 'http://18.208.134.1'
    And User maximize the window
    And User wait until element 'Stellar.CustomUsername' is visible
    And User click on 'Stellar.CustomUsername'
    And User clear the text from 'Stellar.CustomUsername'
    And User enter "asa123sfdgfgkmdgkhg" in 'Stellar.CustomUsername' field
    Then User verify that "Stellar.Username_error" text should be "*Invalid email address"
    And User clear the text from 'Stellar.CustomUsername'
    And User enter "asa" in 'Stellar.CustomUsername' field
    Then User verify that "Stellar.Username_error" text should be "*Minimum 12 characters required"
    And User clear the text from 'Stellar.CustomUsername'
    And User enter "asad@gmail.com" in 'Stellar.CustomUsername' field
    Then User verify that "Stellar.Username_error" text should be ""
    And User clear the text from 'Stellar.CustomUsername'
    And User enter "asad-raza@gmail.com" in 'Stellar.CustomUsername' field
    Then User verify that "Stellar.Username_error" text should be ""
    And User clear the text from 'Stellar.CustomUsername'
    And User enter "asad_raza@gmail.com" in 'Stellar.CustomUsername' field
    Then User verify that "Stellar.Username_error" text should be ""
    And User clear the text from 'Stellar.CustomUsername'
    And User enter "asad  raza@gmail.com" in 'Stellar.CustomUsername' field
    Then User verify that "Stellar.Username_error" text should be "*Invalid email address"
    And User clear the text from 'Stellar.CustomUsername'
    And User enter ".asa@gmail.com" in 'Stellar.CustomUsername' field
    Then User verify that "Stellar.Username_error" text should be "*Invalid email address"
    And User clear the text from 'Stellar.CustomUsername'
    And User enter "_asa@gmail.com" in 'Stellar.CustomUsername' field
    Then User verify that "Stellar.Username_error" text should be "*Invalid email address"
    And User clear the text from 'Stellar.CustomUsername'
    And User enter "-asa@gmail.com" in 'Stellar.CustomUsername' field
    Then User verify that "Stellar.Username_error" text should be "*Invalid email address"
    And User clear the text from 'Stellar.CustomUsername'
    And User enter "aaaaaaaaaaaaaaaaaaaaaaaaassssss@gmail.com" in 'Stellar.CustomUsername' field
    Then User verify that "Stellar.Username_error" text should be "*Maximum 31 characters allowed"
    Then User close the browser


  @CallingFeatureFile
  Scenario: Open browser in any dimension
    Given User wants to run feature file 'src/main/resources/Features/BackgroundFeature/ForUI.feature'

  @CallingFeatureFile
  Scenario: Open browser in any dimension
    Then User verify that the URL of page should be 'https://github.com/signup?user_email=asad%40gmail.com&source=form-home-signup'
    Then User close the browser

  @BrokenLinks
  Scenario: Links Not working
    When User navigate to 'https://demoqa.com/broken'
    Then User verify that all links are working fine
    Then User close the browser

  @UpdateAllure
  Scenario: UpdateAllure
    Then User update allure json files 'Reports/Allure/allure-results' with type to extract pdf reports

  @fluentWait
  Scenario: Fluent wait
    When User navigate to 'https://github.com'
    Then  User wait <5> seconds fluently until element 'Demo.adminTitle' is visible
    Then User close the browser
#
  @downloadFile1
  Scenario: downloadFile
    When User navigate to 'https://demo.automationtesting.in/FileDownload.html'
    Then User will verify that file 'C:\Users\vitsl\Downloads\samplefile (5).pdf' is downloaded

  @downloadFile2
  Scenario: downloadFile
    When User navigate to 'https://demo.automationtesting.in/FileDownload.html'
    And  User scroll to 'Demo.download'
    And  User wants to page down
    Then  User click on download button 'Demo.download' and save it in 'D:\2024\filedownload'

  @savePage
  Scenario: savePage
    When User navigate to 'https://demo.automationtesting.in/FileDownload.html'
    And  User wants to save html file in specified folder 'src/main/resources/Files' with name 'Screenshot'
    Then User close the browser

  @FileUploadCRM2 @Regression @Smoke
  Scenario: Any file upload method
    When User navigate to "http://3.85.125.141/"
    And User maximize the window
    And User verify that user will see "Stellar.loginHeading"
    And User enter text in "Stellar.emailField" field
    And User enter text in "Stellar.passwordField" field
    And User click on "Stellar.loginBtn"
    And User click on "Stellar.viewBtn"
    And User click on "Stellar.consultantDropdown"
    Then User wait for <2000> milliseconds
    And User click on "Stellar.add"
    Then User wait for <2000> milliseconds
    And User click on upload button 'Stellar.uploadCRM' and select file from source 'src/test/resources/SS/asad.png'
    Then User wait for <2000> milliseconds
    Then User close the browser





























#  @CallingFeatureFile
#  Scenario: Open browser in any dimension
#    Given User wants to run feature file 'src/main/resources/Features/BackgroundFeature/ForUI.feature'
#
#  @CallingFeatureFile
#  Scenario: Open browser in any dimension
#    Then User verify that the URL of page should be 'https://github.com/signup?user_email=asad%40gmail.com&source=form-home-signup'
#    Then User close the browser


























#
#
#
#
#
#
#
#
#  @AD
#  Scenario: Handling sideBar testing
#    When User navigate to server 'first' with endpoint 'API.new1'
###    When User navigate to 'https://google.com'
##
#
#  @A
#  Scenario: Handling sideBar testing
#    When User navigate to 'https://github.com'
#    When User validate that element 'Demo.Username' is not present
##    Then User verify that the URL of page should be 'https://www.github.com/'
##    Then User close the browser
#
#  @C
#  Scenario: Handling sideBar testing
#    When User navigate to 'https://reportportal.io/'
#    Then User verify that the URL of page should be 'https://www.amazon.'
#    Then User close the browser
#
#  @D
#  Scenario: Test
#    When User navigate to 'https://the-internet.herokuapp.com/floating_menu'
#    Then User close the browser

#  @E
#  Scenario: Test4
#    When User update allure json files 'Reports/Allure/allure-results' to extract pdf reports


#  @Smoke7688
#  Scenario: Checking Functionality of Username Field
#    When User navigate to 'https://github.com/'
#    And  User maximize the window
#    And  User scroll to 'Demo.Username'
#    And  User click on 'Demo.Username'
#    And  User enter 'abc@gmail.com' in 'Demo.Username' field
#
#
#  @BV
#  Scenario: Open browser in any dimension
#    Given User wants to run feature file 'src/main/resources/Features/BackgroundFeature/ForUI.feature'
##    When User navigate to 'https://github.com'
##    And  User enter 'asad@gmail.com' in 'Demo.Username' field
#    And User click on 'Demo.asadhelo'
##    Then User verify that the URL of page should be 'https://github.com/signup?user_email=asad%40gmail.com&source=form-home-signup'
##    And  User validate that input field 'Demo.Username' has text ''
#
#  @BVV
#  Scenario: Open browser in any dim
#    Then User verify that the URL of page should be 'https://github.com/signup?user_email=asad%40gmail.com&source=form-home-signup'
#    Then User close the browser

#
#  @Sanity4333
#  Scenario: Checking Functionality of Username Filed
#    When User navigate to 'https://github.com/'
#    And  User validate that input field 'Demo.Username' has text ''
##
#  @Spectrum4666
#  Scenario: Verify that Click effect is working on Spectrum Mobile
#    When User navigate to 'https://www.github.com/'
#    And User enter 'asad' in 'Demo.Username' field
#    And  User verify that 'Demo.Username' has attribute 'placeholder' with value 'Email address'
#
#  @Sanity433 @Regression
#  Scenario: Checking Functionality of Username Filed
##    When User navigate to 'https://vertexspecial.com/'
#    When User navigate to 'https://github.com/'
#    And  User maximize the window
##    And  User verify that 'Demo.Username' should have css class 'form-control f4-mktg width-full rounded-md-right'
##    And  User can take screenshot of 'Demo.helo44' and it will save in 'src/test/resources/SS' with name 'asad63'
##    And  User can take screenshot of 'Demo.Username' and it will save in 'src/test/resources/SS' with name 'asad63'
#    And User can take screenshot and it will save in 'src/test/resources/SS' with name 'asad63'
##    And  User can take screenshot of 'Demo.SignUp_Button' and it will save in 'src/test/resources/SS' with name 'asad63'
#
#  @Sanity43 @Regression
#  Scenario: Checking Functionality of Username Filed
#    When User navigate to 'https://github.com/'
#    And  User maximize the window
##    And  User verify that 'Demo.Username' should have css class 'form-control f4-mktg width-full rounded-md-right'
#    And  User can take screenshot of 'Demo.Username' and it will save in 'src/test/resources/SS' with name 'asad43'
#    And User
#
#  @Testing55 @Pass @Regression
#  Scenario: Test
#    When User navigate to 'https://the-internet.herokuapp.com/floating_menu'
#    And  User can take screenshot of 'Stellar.anyCSSPosition' and it will save in 'src/test/resources/SS' with name 'asad44'
##    And User validate that element 'Stellar.anyCSSPosition' has same css key 'position' and css value 'absolute'
##    Then User close the browser
#






#  @Testing1 @Pass @Regression
#  Scenario: Open browser in any dimension
#    When User navigate to 'https://the-internet.herokuapp.com/floating_menu'
#    And User open browser in any dimension <400> x <400>
#    Then User close the browser
#
#  @Testing2 @Pass @Regression
#  Scenario: Handling sideBar testing
#    When User navigate to 'https://the-internet.herokuapp.com/floating_menu'
#    And  User perform customized scrolling using side bar '3000' in px
#    Then User close the browser
#
#  @Testing3 @Pass @Regression
#  Scenario: click and open in new tab
#    When User navigate to 'https://vstellar.io/'
#    And  User maximize the window
#    And User wait for <2000> milliseconds
##    And  User scroll horizontally by pixels <200>
#    And  User scroll by viewportHeights <2>
##    Then User scroll to 'Stellar.newTabScrollDown'
##    Then User click on 'Stellar.newTabScrollDown' and it open in new tab
##    Then User close the browser
#
#  @Testing9 @Pass @Regression
#  Scenario:Validate the hover
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User wait for <4000> milliseconds
##    And User highlight 'Demo.hover'
#    And  User can take screenshot of 'Demo.hover' and it will save in 'src/test/resources/SS' with name 'asad44'
##    And User hover over on 'Demo.hover'
##    And User verify that user will see 'Stellar.afterhoverSee'
##    Then User close the browser
#
#  @Testing10 @Pass @Regression
#  Scenario:Validate the hover and click Methods
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User hover over on 'Demo.hover'
#    And User click on 'Demo.hover_string_visible'
#    And User verify that the URL of page should be 'https://vertexspecial.com/service/business-consulting'
##    Then User close the browser
#
#  @Testing11 @Pass @Regression
#  Scenario:Validate the Back Navigation
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User hover over on 'Demo.hover' and click on 'Demo.hover_string_visible'
#    And User navigate back
#    And User verify that the URL of page should be 'https://vertexspecial.com/'
#    Then User close the browser
#
#  @Testing12 @Pass @Regression
#  Scenario:Validate the Farword Navigation
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User hover over on 'Demo.hover' and click on 'Demo.hover_string_visible'
#    And User navigate back
#    And User wait for <1000> milliseconds
#    And User navigate forward
#    And User verify that the URL of page should be 'https://vertexspecial.com/service/business-consulting'
#    Then User close the browser
#
#  @Testing13 @Pass @Regression
#  Scenario:Validate the Close Tab Method
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User click on 'Demo.new_tab' and it open in new tab
#    And User wait for <2000> milliseconds
#    Then User close the tab
#    Then User close the browser
#
#  @Testing14 @Pass @Regression
#  Scenario:Validate the Url Opening in new windows
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User open new window with URL 'https://vertexspecial.com/about'
#    Then User close the browser
#
#  @Testing15 @Pass @Regression
#  Scenario: Validate the Double click method
#    When User navigate to 'https://omayo.blogspot.com/'
#    And User scroll to 'Demo.heading'
#    And User double click on 'Demo.double_click'
#    And User accept alert
#    Then User close the browser
#
#  @Testing16 @Pass @Regression
#  Scenario: Validate the Url Methods
#    When User navigate to 'https://vertexspecial.com/service'
#    And User verify that the title of page should be 'Service - Vertex Special Technologies'
#    Then User close the browser
#
#
#  @Testing18 @Pass @Regression
#  Scenario: Handing alerts
#    When User navigate to 'http://the-internet.herokuapp.com/javascript_alerts'
#    And User click on 'Stellar.alertLocator'
#    And User accept alert
#    Then User close the browser
#
#  @Testing19 @Pass @Regression
#  Scenario: Handing alerts
#    When User navigate to 'http://the-internet.herokuapp.com/javascript_alerts'
#    And User click on 'Stellar.alertLocator'
#    And User dismiss alert
#    Then User close the browser
#
#  @Testing20 @Pass @Regression
#  Scenario: Sending text to from alert
#    When User navigate to 'http://the-internet.herokuapp.com/javascript_alerts'
#    And User click on 'Stellar.alertLocator'
#    And User switch to alert and send text 'Hi I am asad huzaifa' in alert
#    Then User close the browser
#
  @Testing21 @Pass @Regression
  Scenario: Getting text from alerts Handling
    When User navigate to 'http://the-internet.herokuapp.com/javascript_alerts'
    And User click on 'Stellar.alertLocator'
    And User validate that alert has text 'I am a JS prom'
#    Then User close the browser
#
#  @Testing22 @Pass @Regression
#  Scenario: Validate the alert Text method
#    When User navigate to 'https://omayo.blogspot.com/'
#    And User scroll to 'Demo.heading'
#    And User double click on 'Demo.double_click'
#    And User validate that alert has text 'Double Click Successfull'
#    Then User close the browser
#
#  @cssElementValidation @Regression @Pass
#  Scenario: Validating any css element has same value and key
#    When User navigate to 'https://the-internet.herokuapp.com/floating_menu'
#    And User validate that element 'Stellar.anyCSSPosition' has same css key 'position' and css value 'absolute'
#    Then User close the browser
#
#






#  @customizedScrollingTesting @Regression @Pass
#  Scenario: Handling sideBar testing
#    When User navigate to 'https://the-internet.herokuapp.com/floating_menu'
#    And  User perform customized scrolling using side bar '1000' in px
#    Then User close the browser
#
#  @ClickThenOpenInNewTab @Regression @Pass
#  Scenario: click and open in new tab
#    When User navigate to 'https://vertexspecial.com'
#    Then User scroll to 'Stellar.newTabScrollDown'
#    Then User click on 'Stellar.newTabScrollDown' and it open in new tab
#    Then User close the browser
#
#  @clickAndSwitchTab @Regression @Pass
#  Scenario: click and switch in new tab
#    When User navigate to 'https://vertexspecial.com'
#    Then User scroll to 'Stellar.newTabScrollDown'
#    Then User switches tab by clicking on it 'Stellar.newTabScrollDown' in new tab
#    And User verify that the URL of page should be 'https://vertexspecial.com/service/category/3/custom-software-development'
#    Then User close the browser
#
#  @switchTabWithURL @Regression @RF
#  Scenario: switch tab with matching URL
#    When User navigate to 'https://vertexspecial.com'
#    Then User opens a new tab with URL 'https://vertexspecial.com'
#    Then User opens a new tab with URL 'https://vertexspecial.com/service/category/2/staffing-amp-recruiting'
#    Then User opens a new tab with URL 'https://vertexspecial.com/service/crm-development'
#    Then User opens a new tab with URL 'https://vertexspecial.com/service/category/3/custom-software-development'
#    Then User opens a new tab with URL 'https://vertexspecial.com/about'
#    And User switches to another tab with matching URL 'https://vertexspecial.com/service/crm-development'
#    Then User verify that the URL of page should be 'https://vertexspecial.com/service/crm-development'
#    Then User close the browser
#
#  @switchWindowWithURL @Regression @Pass
#  Scenario: switch window with matching URL
#    When User navigate to 'https://vertexspecial.com'
#    When User open new window with URL 'https://vertexspecial.com/service/category/2/staffing-amp-recruiting'
#    When User open new window with URL 'https://vertexspecial.com/service/crm-development'
#    When User open new window with URL 'https://vertexspecial.com/service/category/3/custom-software-development'
#    When User open new window with URL 'https://vertexspecial.com'
#    And User switches window based on matching URL 'https://vertexspecial.com/service/crm-development'
#    Then User close the browser
#
#  @fileUploadCRM @Regression
#  Scenario: Any file upload method
#    When User navigate to "http://3.94.127.7"
#    And User verify that user will see "Stellar.loginHeading"
#    And User enter text in "Stellar.emailField" field
#    And User enter text in "Stellar.passwordField" field
#    And User click on "Stellar.loginBtn"
#    And User click on "Stellar.viewBtn"
#    And User click on "Stellar.consultantDropdown"
#    And User click on "Stellar.add"
#    And User click on upload button 'Stellar.uploadCRM' and select file from source 'D:\Office Data\Files\SS\flowser.jpg' and click
#    Then User wait for <2000> milliseconds
##    Then User validate that input field 'Stellar.uploadCRM' has text 'C:\fakepath\flowser.jpg'
#    Then User close the browser
#
#  @fieldValidation @Regression
#  Scenario: Field validation
#    When User navigate to "http://3.94.127.7"
#    And User verify that user will see "Stellar.loginHeading"
#    And User enter text in "Stellar.emailField" field
#    And User enter text in "Stellar.passwordField" field
#    And User click on "Stellar.loginBtn"
#    And User click on "Stellar.viewBtn"
#    And User click on "Stellar.consultantDropdown"
#    And User click on "Stellar.add"
#    And User validate that input field 'Stellar.contactField' is validated with pattern '^(?!1)[0-9]{3}-[0-9]{3}-[0-9]{4}$'
#    Then User close the browser
#
#  @ValidateFieldValidPattrens @Regression @Pass
#  Scenario:Validate the Patterns of Text in field
#    When User navigate to 'https://vertexitsol.com/contact-us/'
#    And User scroll to 'Demo.phone_field'
#    And User validate that input field 'Demo.phone_field' is validated with pattern '[0-9\-]+'
#
#  @requiredFieldValidator @Regression @Pass
#  Scenario: Required field validator
#    When User navigate to "http://3.94.127.7"
#    And User verify that user will see "Stellar.loginHeading"
#    And User enter text in "Stellar.emailField" field
#    And User enter text in "Stellar.passwordField" field
#    And User click on "Stellar.loginBtn"
#    And User click on "Stellar.viewBtn"
#    And User click on "Stellar.consultantDropdown"
#    And User click on "Stellar.add"
#    And User validate that field 'Stellar.LastNameField' is required
#
#  @EnterTextinfieldthroughExcel @Regression
#  Scenario: Validate field has text by sending text from excel
#    When User navigate to "http://3.94.127.7"
#    And User verify that user will see "Stellar.loginHeading"
#    And User enter text in "Stellar.emailField" field
#    And User enter text in "Stellar.passwordField" field
#    And User click on "Stellar.loginBtn"
#    And User click on "Stellar.viewBtn"
#    And User click on "Stellar.consultantDropdown"
#    And User click on "Stellar.add"
#    Then User enter text in 'Stellar.LastNameField' field
#    Then User validate that input field 'Stellar.LastNameField' has text 'umerhuzaifa'
#    Then User close the browser
#
#  @EnterTextinfield @Regression
#  Scenario: Validate field has text by sending keys from method line
#    When User navigate to "http://3.94.127.7"
#    And User verify that user will see "Stellar.loginHeading"
#    And User enter text in "Stellar.emailField" field
#    And User enter text in "Stellar.passwordField" field
#    And User click on "Stellar.loginBtn"
#    And User click on "Stellar.viewBtn"
#    And User click on "Stellar.consultantDropdown"
#    And User click on "Stellar.add"
#    Then User enter 'umerHUZAIFA' in 'Stellar.LastNameField' field
#    Then User validate that input field 'Stellar.LastNameField' has text 'umerHUZAIFA'
#    Then User close the browser
#
#  @Dropdownfromselectclass @Regression @Pass
#  Scenario: Validate the dropdown formed by selector class
#    When User navigate to 'https://lums.edu.pk/contact-us'
#    And User scroll to 'Demo.facultyheading'
#    And User wait for <2000> milliseconds
#    And User select 'Demo.drop_option' from 'Demo.drop_bt'
#    And User verify that option 'History' is selected successfully from dropdown 'Demo.drop_bt'
#    Then User close the browser
#
#  @CheckboxChecked @Regression
#  Scenario:Validate the checkboxes
#    When User navigate to 'https://the-internet.herokuapp.com/checkboxes'
#    And User wait until element 'Stellar.checkboxChecked' is visible
#    Then User validate that checkbox 'Stellar.checkboxChecked' is checked
#    Then User close the browser
#
#  @CheckboxNotCheck @Regression
#  Scenario:Validate the checkboxes
#    When User navigate to 'https://the-internet.herokuapp.com/checkboxes'
#    And User wait until element 'Stellar.checkboxNotChecked' is visible
#    Then User validate that checkbox 'Stellar.checkboxNotChecked' is not checked
#    Then User close the browser
#
#  @RadioButtonNotChecked @Regression @Pass
#  Scenario:Validate the radio Button not checked functionality
#    When User navigate to 'https://pay.lums.edu.pk/donations/'
#    And User scroll to 'Demo.radio_check'
#    And User validate that radio button 'Demo.radio_check' is not checked
##    Then User close the browser
#
#  @RadioButtonChecked @Regression
#  Scenario:Validate the radioButton is checked
#    When User navigate to 'https://www.w3schools.com/html/tryit.asp?filename=tryhtml_input_radio'
#    And User move into frame 'Stellar.iframeInn'
#    And User scroll to 'Stellar.radioBtnNotCheck'
#    And User click on 'Stellar.radioBtnNotCheck'
#    And User validate that radio button 'Stellar.radioBtnNotCheck' is checked
#    And User move back to default frame
#    Then User close the browser
#
#  @ClearTheTextFromField @Regression
#  Scenario:Validate the clear text method
#    When User navigate to "http://3.94.127.7"
#    And User verify that user will see "Stellar.loginHeading"
#    And User enter text in "Stellar.emailField" field
#    And User enter text in "Stellar.passwordField" field
#    And User click on "Stellar.loginBtn"
#    And User click on "Stellar.viewBtn"
#    And User click on "Stellar.consultantDropdown"
#    And User click on "Stellar.add"
#    Then User enter 'umerHUZAIFA' in 'Stellar.LastNameField' field
#    And User clear the text from 'Stellar.LastNameField'
#    Then User validate that input field 'Stellar.LastNameField' has text ''
#    Then User close the browser
#
#  @Hover @Regression @Pass
#  Scenario:Validate the hover
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User hover over on 'Demo.hover'
#    Then User close the browser
#
#  @HoverAndSeeElement @Regression @Pass
#  Scenario:Validate the Hover 2nd methods
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User hover over on 'Demo.hover'
#    Then User close the browser
#
#  @HoverAndClick @Regression @Pass
#  Scenario:Validate the hover and click Methods
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User hover over on 'Demo.hover' and click on 'Demo.hover_string_visible'
#    And User verify that the URL of page should be 'https://vertexspecial.com/service/business-consulting'
#    Then User close the browser
#
#  @NavigateBackMethod @Regression @Pass
#  Scenario:Validate the Back Navigation
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User hover over on 'Demo.hover' and click on 'Demo.hover_string_visible'
#    And User navigate back
#    And User verify that the URL of page should be 'https://vertexspecial.com/'
#    Then User close the browser
#
#  @NavigateFarwordMethod @Regression @Pass
#  Scenario:Validate the Farword Navigation
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User hover over on 'Demo.hover' and click on 'Demo.hover_string_visible'
#    And User navigate back
#    And User wait for <1000> milliseconds
#    And User navigate forward
#    And User verify that the URL of page should be 'https://vertexspecial.com/service/business-consulting'
#    Then User close the browser
#
#  @MaximizeTheWindow @Regression @Pass
#  Scenario:Validate the Maximize window Method
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    Then User close the browser
#
#  @MinimizeTheWindow @Regression @Pass
#  Scenario:Validate the minimize the window Methods
#    When User navigate to 'https://vertexspecial.com/'
#    And User minimize the window
#    Then User close the browser
#
#  @CloseTabMethod @Regression @Pass
#  Scenario:Validate the Close Tab Method
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User click on 'Demo.new_tab' and it open in new tab
#    And User wait for <2000> milliseconds
#    Then User close the tab
#    Then User close the browser
#
#  @OpenNewTabMethod @Regression @Pass
#  Scenario:Validate the Open Tab Method
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User click on 'Demo.new_tab' and it open in new tab
#    Then User close the browser
#
#  @OpenUrlInNewWindow @Regression @Pass
#  Scenario:Validate the Url Opening in new windows
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User open new window with URL 'https://vertexspecial.com/about'
#    Then User close the browser
#
#  @OpenUrlInNewTab @Regression @Pass @RF1
#  Scenario:Validate the Url Opening in new tab
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User opens a new tab with URL 'https://vertexspecial.com/service/digital-business-process-automation'
#
#  @IntValueinField @Regression @Pass
#  Scenario:Validate the int value in field
#    When User navigate to 'https://vertexspecial.com/service/digital-business-process-automation'
#    And User maximize the window
#    And User scroll to 'Demo.have_query'
#    And User enter <12345> in 'Demo.phone_no' field
#    Then User validate that input field 'Demo.phone_no' has text '12345'
#    Then User close the browser
#
#  @UserWillSeeTheElement @Regression @Pass
#  Scenario:Validate the element is visible
#    When User navigate to 'https://vertexspecial.com/'
#    And User maximize the window
#    And User verify that user will see 'Demo.element_visible'
#    Then User close the browser
#
#  @verifyDoubleClickMethod @Regression @Pass
#  Scenario: Validate the Double click method
#    When User navigate to 'https://omayo.blogspot.com/'
#    And User scroll to 'Demo.heading'
#    And User double click on 'Demo.double_click'
#    And User accept alert
#    Then User close the browser
#
#  @verifyTitlePageMethod @Regression @Pass
#  Scenario:Validate the title page method
#    When User navigate to 'https://vertexspecial.com/service'
#    And User verify that the title of page should be 'Service - Vertex Special Technologies'
#    Then User close the browser
#
#  @verfiyTheUrlMethod @Regression @Pass
#  Scenario: Validate the Url Methods
#    When User navigate to 'https://vertexspecial.com/service'
#    And User verify that the URL of page should be 'https://vertexspecial.com/service'
#    Then User close the browser
#
#  @iframeIn @Regression
#  Scenario:Validate the move into iframe
#    When User navigate to 'https://www.w3schools.com/html/tryit.asp?filename=tryhtml_input_radio'
#    And User move into frame 'Stellar.iframeInn'
#    And User scroll to 'Stellar.radioBtnNotCheck'
#    And User click on 'Stellar.radioBtnNotCheck'
#    And User validate that radio button 'Stellar.radioBtnNotCheck' is checked
#    And User move back to default frame
#    Then User close the browser
#
#  @iFrameOut @Regression
#  Scenario:Validate exit from iframe
#    When User navigate to 'https://www.w3schools.com/html/tryit.asp?filename=tryhtml_input_radio'
#    And User move into frame 'Stellar.iframeInn'
#    And User scroll to 'Stellar.radioBtnNotCheck'
#    And User click on 'Stellar.radioBtnNotCheck'
#    And User validate that radio button 'Stellar.radioBtnNotCheck' is checked
#    And User move back to default frame
#    Then User click on 'Stellar.onDefaultFrame'
#    Then User close the browser
#
#  @ValidateFieldValidPattrens @Regression
#  Scenario:Validate the Patterns of Text in field
#    When User navigate to 'https://vertexitsol.com/contact-us/'
#    And User scroll to 'Demo.phone_field'
#    And User validate that input field 'Demo.phone_field' is validated with pattern '[0-9\-]+'
#    Then User close the browser
#
#  @CloseBrowserMethod @Regression
#  Scenario:Validate the Close Window method
#    When User navigate to 'https://vertexspecial.com/'
#    And User verify that the URL of page should be 'https://vertexspecial.com/'
#    Then User close the browser
#
#  @waitUntilElementIsVisible @Regression
#  Scenario:Validate the WaitUntilElementIsVisible Method
#    When User navigate to 'https://vertexspecial.com/'
#    And User wait until element 'Stellar.cookiesAccept' is visible
#    Then User verify that user will see 'Stellar.cookiesAccept'
#    Then User close the browser
#
#  @waitUntilElementIsDisappear
#  Scenario:Validate the WaitUntilElementIsDisappear Method
#    When User navigate to 'https://vertexspecial.com/'
#    And User wait until element 'Stellar.cookiesAccept' is visible
#    Then User wait until element is disappears 'Stellar.cookiesAccept'
##   You need to click on cookies' accept/reject/manage etc button to mak eit disappear
#    Then User close the browser
#
#  @draggable @Regression
#  Scenario: Handling draggable functionality
#    When User navigate to 'http://the-internet.herokuapp.com/drag_and_drop'
#    And  User validate that 'Stellar.Drag' is drag able
#    Then User close the browser
#
#  @AcceptAlert @Regression
#  Scenario: Handing alerts
#    When User navigate to 'http://the-internet.herokuapp.com/javascript_alerts'
#    And User click on 'Stellar.alertLocator'
#    And User accept alert
#    Then User close the browser
#
#  @DismissAlert @Regression
#  Scenario: Handing alerts
#    When User navigate to 'http://the-internet.herokuapp.com/javascript_alerts'
#    And User click on 'Stellar.alertLocator'
#    And User dismiss alert
#    Then User close the browser
#
#  @SendKeysFromAlert @Regression
#  Scenario: Sending text to from alert
#    When User navigate to 'http://the-internet.herokuapp.com/javascript_alerts'
#    And User click on 'Stellar.alertLocator'
#    And User switch to alert and send text 'Hi I am umer huzaifa' in alert
#    Then User close the browser
#
#  @alertGettingTextHandling @Regression
#  Scenario: Getting text from alerts Handling
#    When User navigate to 'http://the-internet.herokuapp.com/javascript_alerts'
#    And User click on 'Stellar.alertLocator'
#    And User validate that alert has text 'I am a JS prompt'
#    Then User close the browser
#
#  @verifyTheAlertTextMessage @Regression
#  Scenario: Validate the alert Text method
#    When User navigate to 'https://omayo.blogspot.com/'
#    And User scroll to 'Demo.heading'
#    And User double click on 'Demo.double_click'
#    And User validate that alert has text 'Double Click Successfull'
#    Then User close the browser
#
#  @DragAndDropAble @Regression  @RefFailedAssertion
#  Scenario: Validating drag and drop functionality
#    When User navigate to 'http://www.dhtmlgoodies.com/scripts/drag-drop-quiz/drag-drop-quiz.html'
#    Then User wait for <3000> milliseconds
#    Then User validate that elements are draggable 'Stellar.dragElementforD&D' and droppable 'Stellar.dropElementforD&D'
#    Then User wait for <3000> milliseconds
#    And User validate that element 'Stellar.dropElementforD&D' is dropped successfully having text '15'
#    Then User close the browser
#
#  @DropdownFromSelectClass @Regression @RegFailed123
#  Scenario: Validate the dropdown formed by selector class
#    When User navigate to 'https://lums.edu.pk/contact-us'
#    And User scroll to 'Demo.facultyheading'
#    And User select 'Demo.drop_option' from 'Demo.drop_bt'
#    And User wait for <3000> milliseconds
#    And User verify that option 'History' is selected successfully from dropdown 'Demo.drop_bt'
#    Then User close the browser
#
#  @ElementNotFound @Pass @Regression
#  Scenario: Passing assertion and wait for some custom time to locate element
#    When User navigate to 'https://vertexspecial.com/'
##      And User validate that element 'Stellar.elementNotFound' is not present
##      And User validate that element 'Stellar.elementNotFoundWithClass' is not present
#    And User validate that element 'Stellar.notFoundWithhref' is not present
#    And User verify that 'h' should be disabled
