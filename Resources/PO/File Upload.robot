*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library             BuiltIn

*** Variables ***

*** Keywords ***

Open File Upload Page
        SeleniumLibrary.Click Link      xpath=//*[@id="content"]/ul/li[18]/a
Create the file test.txt with “testing” as text.
        Create File   ${EXECDIR}${/}downloads${/}test.txt    content=testing
Upload the file test.txt
        Choose File     xpath=//*[@id="file-upload"]        ${EXECDIR}${/}downloads${/}test.txt
        Click Element   xpath=//*[@id="file-submit"]
        BuiltIn.Sleep   2s

Validate that the file was uploaded.
        Page Should Contain     File Uploaded!
