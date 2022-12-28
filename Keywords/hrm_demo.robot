*** Settings ***
Library  SeleniumLibrary
Resource    F:/Robotframework/Variables/hrm_variable.robot

*** Keywords ***
Browser should be opened
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    6
    Page Should Contain    Login
    Log To Console    text found
Enter Username
    Wait Until Page Contains Element    ${name}    5
    Log To Console    Username Found
    Click Element    ${name}
    Log To Console    Username input clicked
    Input Text    ${name}    Admin
    Log To Console    Username displayed
Enter Password
    Wait Until Page Contains Element    ${name}    5
    Log To Console    Passowrd Found
    Click Element    ${pass}
    Log To Console    Password input clicked
    Input Text    ${pass}    admin123
    Log To Console    Password accepted
Click Login
    Wait Until Page Contains Element    ${name}    5
    Log To Console    Login button found
    Click Button    ${login_btn}
    Log To Console    Login Button Clicked

Timelink method
    click on side menu    ${time_link}
    Sleep    3

Different module
    click on side menu    ${rec_link}
    Sleep    3
    Click Element    ${job_drop}
    job title drop down
    Sleep    10

#navigationg through dropdown    

job title drop down
    FOR  ${i}  IN RANGE  1  20
        Press Keys    none    ARROW_DOWN
        ${element_2} =  Run Keyword And Return Status    Element Should Be Visible    ${net_admin}
        IF  ${element_2}
            Wait Until Element Is Visible    ${net_admin}
        Press Keys    ${net_admin}    ENTER
        # Select From List By Value    ${net_admin}
        # Select From List By Index    15
            Exit For Loop
        ELSE
            Log    continue
        END
        
    END
          

#user defined method
click on side menu
    [Arguments]    ${elment}
    Wait Until Page Contains Element    ${elment}    10
    Click Element    ${elment}
    
