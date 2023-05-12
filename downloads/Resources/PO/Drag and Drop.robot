*** Settings ***
Library             SeleniumLibrary
Library             ImageHorizonLibrary

*** Variables ***
${A_ELEMENT} =      xpath=//*[@id="column-a"]
${B_ELEMENT} =      xpath=//*[@id="column-b"]

*** Keywords ***

Open Drag and Drop Page

     SeleniumLibrary.Click Link     xpath=//*[@id="content"]/ul/li[10]/a

Drag and drop the box A to the box B
        Move To     550        270
        ImageHorizonLibrary.Mouse Down   button=left
        Move To     765        270
        ImageHorizonLibrary.Mouse Down  button=left
        ImageHorizonLibrary.Mouse Up    button=left
        sleep   2sec


Validate that the boxes were changed A.
    Element Text Should Be      xpath=//*[@id="column-b"]/header     expected=A
Drag and drop the box B to the box A
        Move To     765        270
        ImageHorizonLibrary.Mouse Down   button=left
        Move To     550        270
        ImageHorizonLibrary.Mouse Down  button=left
        ImageHorizonLibrary.Mouse Up    button=left
        sleep   2sec

Validate that the boxes were changed B.
    Element Text Should Be      xpath=//*[@id="column-a"]/header     expected=A

