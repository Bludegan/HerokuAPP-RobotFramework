*** Settings ***
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
Open Multiple Windows Page
    SeleniumLibrary.Click Link     xpath=//*[@id="content"]/ul/li[33]/a
Click on the link “Click Here”
    Click Link      partial link=Click Here
Validate the text displayed on the new page.
    Close Window
    Switch Window   title=New Window
    Wait Until Page Contains    New Window

