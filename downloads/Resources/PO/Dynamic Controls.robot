*** Settings ***
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
Open Dynamic Control Page
        SeleniumLibrary.Click Link          xpath=//*[@id="content"]/ul/li[13]/a
Click on the Remove button
        Click button                        xpath=//*[@id="checkbox-example"]/button
Validate that the checkbox was removed
        Page Should Not Contain       xpath=//*[@id="checkbox"]
Click on the Enable button
        Click button                        xpath=//*[@id="input-example"]/button
Validate that input was enabled.
        Element Should Be Enabled           xpath=//*[@id="input-example"]/input



