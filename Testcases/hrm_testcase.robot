*** Settings ***
Resource    F:/Robotframework/Keywords/hrm_demo.robot
Library    SeleniumLibrary

*** Test Cases ***
opening orange hrm in browser
    Browser should be opened
    Enter Username
    Enter Password
    Click Login
    # Timelink method
    Different module
    job title drop down
