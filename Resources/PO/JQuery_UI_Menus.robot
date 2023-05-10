*** Settings ***
Library             SeleniumLibrary

*** Variables ***

${PATH_FILE} =      ${EXECDIR}${/}downloads${/}menu.xls

*** Keywords ***
Open JQueryUI - Menu Page
    SeleniumLibrary.Click Link   xpath=//*[@id="content"]/ul/li[28]/a
Click on the Enabled option
    Click Element       xpath=//*[@id="ui-id-3"]/a
Click on the Downloads
    Click Element      xpath=//*[@id="ui-id-4"]/a
Click on the Excel Options
    Click Element      xpath=//*[@id="ui-id-7"]/a
Validate that the excel file was downloaded
    File Should Exist   ${PATH_FILE}
