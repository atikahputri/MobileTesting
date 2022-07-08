*** Settings ***
Documentation       Search Flow Related Keyword
Library             AppiumLibrary
Variables           ../Login/LoginLocator.yaml 

*** Keywords ***
Tap Sign in Icon
    Tap                             ${signin_icon}

Input Username
    [Arguments]                     ${user_email}
    Input text                      ${username}             ${user_email}              

Input Password
    [Arguments]                     ${user_password}
    Input text                      ${password}             ${user_password}     

Tap Sign in Button
    Tap                             ${signin_button}

Verify Account User Login
    Wait Until Page Contains        ${account_user}    
    Element Should Be Visible       ${account_user} 