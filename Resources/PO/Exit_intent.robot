*** Settings ***
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
Open Exit Intent Page
    SeleniumLibrary.Click Link      xpath=//*[@id="content"]/ul/li[16]/a
Mouse out of the viewport pane and see a modal window appear.
    Mouse Over      xpath=/html/body/div[2]/a/img
    MOUSE Up        xpath=/html/body/div[2]/a/img
Validate that the modal is displayed.