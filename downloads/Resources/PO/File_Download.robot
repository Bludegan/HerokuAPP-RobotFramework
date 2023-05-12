
*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem

*** Variables ***
${DOWNLOAD_PATH}    ${EXECDIR}${/}downloads${/}

*** Keywords ***
Open File Download
    SeleniumLibrary.Click Link      xpath=//*[@id="content"]/ul/li[17]/a

Download each file
    Click Element       xpath=//*[@id="content"]/div/a[18]

Validate that each file was downloaded.
   File Should Exist    ${DOWNLOAD_PATH}person.png


