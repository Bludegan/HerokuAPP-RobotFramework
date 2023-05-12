*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${BUTTON_GALLERY} =     xpath=//*[@id="content"]/div/ul/li[5]/a

*** Keywords ***

Open Desappearing Elements Page
     SeleniumLibrary.Click Link         xpath=//*[@id="content"]/ul/li[9]/a

Enter to this page sometimes the Gallery button is loaded.

    ${document_number}=   SeleniumLibrary.Get Element Count   ${BUTTON_GALLERY}
    IF    ${document_number} == 1
        LOG     Number of documents: ${document_number}
    ELSE IF  ${document_number} == 0
        FOR    ${i}    IN RANGE    0        30
        Sleep       0.5
        RELOAD PAGE
#    ${document_number}=   SeleniumLibrary.Get Element Count   ${BUTTON_GALLERY}
#    LOG     Number of documents: ${document_number}
#    Log     ${i}      WARN
        END
    END

#    ${countElement}=  Get Element Count  xpath=${BUTTON_GALLERY}
#    Run Keyword If  ${countElement} > Page Should Contain Element
#
#    IF
#
#    ELSE
#    Reload Page
#    Page Should Contain Link            ${BUTTON_GALLERY}
#    SeleniumLibrary.Wait Until Page Contains Element    ${BUTTON_GALLERY}
#    Reload Page
#
#
#    FOR    ${i}    IN RANGE    5
#        ${button_visible}    Run Keyword And Return Status    Wait Until Element Is Visible    ${BUTTON_GALLERY}
#        Run Keyword If    ${button_visible}    BREAK
#        Sleep    1s
#    END

Refresh until the button is visible.

Validate the Gallery button exists.

Refresh until the button is not visible.

Validate the Gallery button does not exist.






