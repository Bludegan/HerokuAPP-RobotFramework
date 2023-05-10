*** Settings ***
Library         SeleniumLibrary
Library             OperatingSystem

*** Variables ***
${URL} =        https://the-internet.herokuapp.com/
${BROWSER} =    chrome

*** Keywords ***

Begin Web Test
    [Documentation]  This is some basic info about the test

    ${full}  Set Variable  ${EXECDIR}${/}downloads${/}

    ${path}  Normalize Path     ${full}

    ${prefs} =  Create Dictionary   download.default_directory=${path}   download.prompt_for_download=${FALSE}  download.directory_upgrade=${TRUE}

    Set Selenium Speed 	     2s
    FOR    ${i}    IN RANGE    30
    Open Browser             ${URL}   ${BROWSER}        options=add_experimental_option("prefs",${prefs})
    Close Window
    END
    Maximize Browser Window
    Wait Until Page Contains  Welcome to the-internet

End Web Test     
    Close Browser


