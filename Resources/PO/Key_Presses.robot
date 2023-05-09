*** Settings ***
Library             SeleniumLibrary

*** Variables ***

*** Keywords ***

Open Key Presses Page
         SeleniumLibrary.Click Link     xpath=//*[@id="content"]/ul/li[31]/a
Click on the field and press the key “ESC”
         Press Keys    xpath=//*[@id="target"]    ESC
Validate that the “You entered: ESCAPE”
         Wait Until Page Contains    You entered: ESCAPE
Click on the field and press the key “BACK_SPACE”
         Press Keys    xpath=//*[@id="target"]    BACK_SPACE
Validate the result “You entered: BACK_SPACE”
         Wait Until Page Contains    You entered: BACK_SPACE


