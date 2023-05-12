*** Settings ***
Library             SeleniumLibrary

*** Variables ***

*** Keywords ***
Open Page
     SeleniumLibrary.Click Link  //*[@id="content"]/ul/li[7]/a
Right Click on the box
     Open Context Menu  xpath=//*[@id="hot-spot"]

Validate the text on the alert is equals to “You selected a context menu”

    ${alert_message}=    Handle Alert       action=LEAVE        timeout=None
    Should Be Equal As Strings    ${alert_message}    You selected a context menu

Click on the accept button.

   Handle Alert    action=ACCEPT

Validate that alert was closed.

    Alert Should Not Be Present


