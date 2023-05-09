*** Settings ***
Library             SeleniumLibrary

*** Variables ***

*** Keywords ***
Open Horonzontal Slider Page
         SeleniumLibrary.Click Link     xpath=//*[@id="content"]/ul/li[24]/a
Using the slider, select the number 3.5
         Click Element At Coordinates   xpath=//*[@id="content"]/div/div/input     20       0
Validate that the value 3.5 is selected.
          ${value}=    Get Text    xpath=//*[@id="range"]
          Should Be Equal As Strings    ${value}    3.5