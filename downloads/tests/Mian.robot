*** Settings ***
Documentation           This is a final excercise in the Robot Framework
Resource                ../Resources/Common.robot
Resource                ../Resources/PO/Add_Remove_Elements.robot
Resource                ../Resources/PO/Basic_Auth.robot
Resource                ../Resources/PO/Broken_Images.robot
Resource                ../Resources/PO/Checkboxes.robot
Resource                ../Resources/PO/Context_Menu.robot
Resource                ../Resources/PO/Drag and Drop.robot
Resource                ../Resources/PO/Key_Presses.robot
Resource                ../Resources/PO/Horizontal_Silider.robot
Resource                ../Resources/PO/File_Download.robot
Resource                ../Resources/PO/Form_Authentication.robot
Resource                ../Resources/PO/Floating_Menu.robot
Resource                ../Resources/PO/Dynamic_Content.robot
Resource                ../Resources/PO/Dynamic Controls.robot
Resource                ../Resources/PO/Exit_intent.robot
Resource                ../Resources/PO/JQuery_UI_Menus.robot
Resource                ../Resources/PO/Multiple_Windows.robot
Resource                ../Resources/PO/JavaScript_Alert.robot
Test Setup              Begin Web Test
Test Teardown           End Web Test
*** Variables ***


*** Test Cases ***

Add/Remove Elements
        [Documentation]    This a test to add 20 elements, validate and remove
        [Tags]    Test-1
        Open Add/Remove Elements Page
        Add 20 Elements
        Validate That Element Was Added
        Remove Elements
        Validate Each Element Was Deleted

Broken Images
        [Documentation]    This a test to verify
        [Tags]    Test-2
        Open Broken Image Page
        Validate that the number images broken are 2
        Validate that the number images with a link available is 1

Basic Auth
        [Documentation]    This a test to verify
        [Tags]    Test-3
        Open Basic Auth Page
        Login with valid credentials (user: admin, password: admin)
        Validate that the authentication was successful.
        Login with not valid credentials (user: admin1, password: admin1)
        Validate that the authentication was unsuccessful.

Checkboxes
        [Documentation]    This a test to verify
        [Tags]    Test-4
        Open Checkboxes Page
        Select the checkbox “Checkbox 1”.
        Validate that the checkbox was checked.
        Select the checkbox “Checkbox 2”.
        Validate that the checkboxes were checked.

Context Menu
        [Documentation]    This a test to verify
        [Tags]    Test-5
         Open Page
         Right Click on the box
         Validate the text on the alert is equals to “You selected a context menu”
         Click on the accept button.
         Validate that alert was closed.

#Disappearing Elements
#        [Documentation]    This a test to verify
#        [Tags]    Test-6
#        Open Desappearing Elements Page
#    	enter to this page sometimes the Gallery button is loaded.
#	    Refresh until the button is visible.
#	    Validate the Gallery button exists.
#	    Refresh until the button is not visible.
#	    Validate the Gallery button does not exist.

Drag and Drop
        [Documentation]    This a test to verify
        [Tags]    Test-7
        Open Drag and Drop Page
        Drag and drop the box A to the box B
        Validate That The Boxes Were Changed A.
        Drag and drop the box B to the box A
        Validate That The Boxes Were Changed B.

#Dynamic Content
#        [Documentation]    This a test to verify
#        [Tags]    Test-8
#        Refresh the page until all the images appears at least on time
#        Validate the 5 different Image names

Dynamic Controls
        [Documentation]    This a test to verify
        [Tags]    Test-9
        Open Dynamic Control Page
        Click on the Remove button
        Validate that the checkbox was removed
        Click on the Enable button
        Validate that input was enabled.

Exit Intent
        [Documentation]    This a test to verify
        [Tags]    Test-10
         Open Exit Intent Page
         Mouse out of the viewport pane and see a modal window appear.
         Validate that the modal is displayed.

#File Download
#        [Documentation]    This a test to verify
#        [Tags]    Test-11
#        Open File Download
#        Download each file
#        Validate that each file was downloaded.


#File Upload
#        [Documentation]    This a test to verify
#        [Tags]    Test-12


Floating Menu
        [Documentation]    This a test to verify
        [Tags]    Test-13
        Open Floating Menu Page
        Scroll to the bottom of the page
        Validate that ht emenu option are visible

Form Authetication
        [Documentation]    This a test to verify
        [Tags]    Test-14
        Open Form Acthetication Page
        Enter tomsmith for the username and SuperSecretPassword! for the password
        CLick on the Login button
        Validate the login was successful
        Click on the button Logout
        Validate that the logout was successful
        Enter tomsmith1 for the username and SuperSecretPassword! for the password.
        CLick on the Login button
        Validate the message “Your username is invalid!”
        CLick on the Login button
        Enter tomsmith for the username and SuperS1ecretPassword! for the password.
        Validate the message “Your password is invalid!”

Horizontal Slider
        [Documentation]    This a test to verify
        [Tags]    Test-15
        Open Horonzontal Slider Page
        Using the slider, select the number 3.5
        Validate that the value 3.5 is selected.

JQuery UI Menus
        [Documentation]    This a test to verify
        [Tags]    Test-16
        Open JQueryUI - Menu Page
        Click on the Enabled option
        Click on the Downloads
        Click on the Excel Options
        Validate that the excel file was downloaded

JavaScript Alert
        [Documentation]   This test case verifies that the user is able to input text, Accept/Dismiss a JS Confirm and also verify its text
        [Tags]    Test-17
        Open JavaScript Alerts
        Click on the button “Click For JS Alert”
        Click on the Accept button
        Validate the result “You successfuly clicked an alert”
        Click on the button “Click for JS Prompt”
        Fill the text “testing”
        Validate the result You entered: "testgin”
Key Presses
        [Documentation]    This a test to verify
        [Tags]    Test-18
        Open Key Presses Page
        Click on the field and press the key “ESC”
        Validate that the “You entered: ESCAPE”
        Click On The Field And Press The Key “BACK_SPACE”
        Validate the result “You entered: BACK_SPACE”

Multiple Windows
        [Documentation]    This a test to verify
        [Tags]    Test-19
        Open Multiple Windows Page
        Click on the link “Click Here”
        Validate the text displayed on the new page.
*** Keywords ***





