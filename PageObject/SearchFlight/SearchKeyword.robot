*** Settings ***
Documentation       Search Flight Number Related Keyword
Library             AppiumLibrary
Variables           ../Login/LoginLocator.yaml 
Variables           ../SearchFlight/SearchLocator.yaml

*** Variables ***
${user_email}      support@ngendigital.com 
${user_password}   abc123

*** Keywords ***
User Should Be Able To Login
    Tap                             ${signin_icon}
    Wait Until Page Contains        ${username} 
    Input text                      ${username}             ${user_email}              
    Input text                      ${password}             ${user_password}     
    Tap                             ${signin_button}

Tap Search Tab
    Wait Until Page Contains        ${search_tab}
    Tap                             ${search_tab}

Input Flight Number
    [Arguments]                     ${flight_id}
    Input text                      ${search_field}      ${flight_id}

Tap Search Button
    Tap                             ${search_button}

Verify Message
    Element Should Be Visible       ${flight_number}