*** Settings ***
Library  SeleniumLibrary
Resource    F:/Robotframework/Variables/demo_variable.robot

*** Keywords ***
Browser should be opened
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${search}    15
    Click Element    ${search}
    Input Text    ${search}    manualtesting
    Wait Until Page Contains Element    ${search_button}    15
    Click Button    ${search_button}
  
