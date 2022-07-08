*** Settings ***
Documentation       Search Flight Number Related Keyword
Library             AppiumLibrary
Variables           ../Login/LoginLocator.yaml 
Variables           ../SearchFlight/BookLocator.yaml

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

Tap Book Tab
Select "From City" Dropdown
Select "To City" Dropdown
Select "Class" Dropdown
Select "Start Date" 
Select "End Date"
Select "Flight" Radiobutton
Select "+/-1 Day" Checklist 
Tap Book Button
Tap Confirm Button
Verify Message Appears