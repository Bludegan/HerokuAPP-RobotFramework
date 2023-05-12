*** Settings ***
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
Open Floating Menu Page
    Click Link      xpath=//*[@id="content"]/ul/li[19]/a
Scroll to the bottom of the page
#    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
     Scroll Element Into View       xpath=//*[@id="page-footer"]/div/div
Validate that ht emenu option are visible
    Element Should Be Visible   xpath=//*[@id="menu"]