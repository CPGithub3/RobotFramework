*** Settings ***
Resource    F:/Robotframework/Keywords/demo.robot
Library    SeleniumLibrary

*** Test Cases ***
opening google in browser
    Browser should be opened
