*** Settings ***
Library             SeleniumLibrary

*** Variables ***

*** Keywords ***

Open Form Acthetication Page
    SeleniumLibrary.Click Link      xpath=//*[@id="content"]/ul/li[21]/a

Enter tomsmith for the username and SuperSecretPassword! for the password
    Input Text     xpath=//*[@id="username"]     tomsmith
    Input Text     xpath=//*[@id="password"]     SuperSecretPassword!
CLick on the Login button
    Click Element  xpath=//*[@id="login"]/button/i

Validate the login was successful
    Page Should Contain      You logged into a secure area!
Click on the button Logout
    Click Element  xpath=//*[@id="content"]/div/a/i
Validate that the logout was successful
    Page Should Contain      You logged out of the secure area!

Enter tomsmith1 for the username and SuperSecretPassword! for the password.
    Input Text     xpath=//*[@id="username"]     tomsmith1
    Input Text     xpath=//*[@id="password"]     SuperSecretPassword!


Validate the message “Your username is invalid!”
    Page Should Contain      Your username is invalid!
Enter tomsmith for the username and SuperS1ecretPassword! for the password.
    Input Text     xpath=//*[@id="username"]     tomsmith
    Input Text     xpath=//*[@id="password"]     SuperSqecretPassword!

Validate the message “Your password is invalid!”
    Page Should Contain      Your username is invalid!


