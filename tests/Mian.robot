*** Settings ***
Documentation       This is a final excercise in the Robot Fram
Library             SeleniumLibrary
Resource            ../Resources/Common.robot
Resource            ../Resources/PO/Add_Remove_Elements.robot
Test Setup              Begin Web Test
Test Teardown           End Web Test



*** Variables ***


*** Test Cases ***

Add and Remove element 
    Add_Remove_Elements.Open Page

*** Keywords ***




