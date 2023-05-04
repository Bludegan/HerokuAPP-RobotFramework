*** Settings ***
Library   SeleniumLibrary

*** Variables ***


*** Test Cases ***


*** Keywords ***

Begin Web Test
    [Documentation]  This is some basic info about the test
    Set Selenium Speed 	     5s
    Open Browser             ${URL}   ${BROWSER}
    Maximize Browser Window 
End Web Test     
    Close Browser


