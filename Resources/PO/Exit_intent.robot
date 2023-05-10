*** Settings ***
Library             SeleniumLibrary
Library             ImageHorizonLibrary
*** Variables ***


*** Keywords ***
Open Exit Intent Page
    SeleniumLibrary.Click Link      xpath=//*[@id="content"]/ul/li[16]/a
Mouse out of the viewport pane and see a modal window appear.
    ImageHorizonLibrary.Move To      1000     154
    Sleep    2Sec
    ImageHorizonLibrary.Move To      1000      0
    Sleep    2Sec
Validate that the modal is displayed.
    SeleniumLibrary.Element Should Be visible     xpath=//*[@id="ouibounce-modal"]/div[2]