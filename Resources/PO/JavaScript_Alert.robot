*** Settings ***
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
Open JavaScript Alerts
    Click Link  xpath=//*[@id="content"]/ul/li[29]/a
Click on the button “Click For JS Alert”
    Click button  xpath=//*[@id="content"]/div/ul/li[1]/button
Click on the Accept button
    Handle Alert
Validate the result “You successfuly clicked an alert”
    Page Should Contain     You successfully clicked an alert
Click on the button “Click for JS Prompt”
    Click button  xpath=//*[@id="content"]/div/ul/li[3]/button
Fill the text “testing”
    Input Text Into Alert       testing     action=ACCEPT
Validate the result You entered: "testgin”
    Element Text Should Be  id:result  You entered: testing