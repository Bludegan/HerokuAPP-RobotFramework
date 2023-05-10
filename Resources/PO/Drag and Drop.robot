*** Settings ***
Library         SeleniumLibrary
*** Variables ***
${A_ELEMENT} =      xpath=//*[@id="column-a"]
${B_ELEMENT} =      xpath=//*[@id="column-b"]

*** Keywords ***

Open Drag and Drop Page

     SeleniumLibrary.Click Link     xpath=//*[@id="content"]/ul/li[10]/a

Drag and drop the box A to the box B

#    ${position} =  Get Horizontal Position       ${B_ELEMENT}
#    Log     ${position}
#    Drag And Drop Relative To       ${A_ELEMENT}         ${position}        0

#    Drag And Drop   ${A_ELEMENT}   ${B_ELEMENT}
#
#Validate that the boxes were changed.
#    Element Text Should Be    ${A_ELEMENT}     Dropped!
#
#Drag and drop the box B to the box A
#    Drag And Drop      ${B_ELEMENT}     ${A_ELEMENT}
#
#Validate that the boxes were changed.
#    Element Text Should Be    ${B_ELEMENT}    Drag me to my target

    mouse down         xpath=//*[@id="column-a"]
    mouse up            xpath=//*[@id="column-a"]
    drag and drop       xpath=//*[@id="column-a"]         xpath=//*[@id="column-b"]