*** Settings ***
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***

Open Desappearing Elements Page
     SeleniumLibrary.Click Link  //*[@id="content"]/ul/li[9]/a

When enter to this page sometimes the Gallery button is loaded.

Refresh until the button is visible.

Validate the Gallery button exists.

Refresh until the button is not visible.

Validate the Gallery button does not exist.



