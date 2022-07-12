*** Settings ***
Documentation       Search Flight Number Related Keyword
Library             AppiumLibrary
Variables           ../Login/LoginLocator.yaml 
Variables           ../BookFlight/BookLocator.yaml

*** Variables ***
${user_email}           support@ngendigital.com 
${user_password}        abc123
${from_toronto}         Toronto
${from_paris}           Paris
${text_confirmation}    Your flight is booked. Reservation number is CADX2214

*** Keywords ***
User Should Be Able To Login
    Tap                             ${signin_icon}
    Wait Until Page Contains        ${username} 
    Input text                      ${username}             ${user_email}              
    Input text                      ${password}             ${user_password}     
    Tap                             ${signin_button}

Tap Book Tab
    Wait Until Page Contains        ${book_tab}
    Tap                             ${book_tab}

Select "From City" Dropdown
    Wait Until Page Contains        ${from_city}
    Tap                             ${from_city}
    Tap                             ${toronto}

Select "To City" Dropdown
    Tap                             ${to_city}
    sleep                           3s
    Tap                             ${paris}

Select "Class" Dropdown
    Tap                             ${class}
    sleep                           3s
    Tap                             ${first_class}

Select "Start Date" 
    Tap                             ${start_date} 
    sleep                           3s
    Tap                             ${choose_start_date}
    Tap                             ${ok_button}

Select "End Date"
    Tap                             ${end_date}
    sleep                           3s
    Tap                             ${choose_end_date}
    Tap                             ${ok_button}

Select "Flight" Radiobutton
    Tap                             ${flight_button}

Select "+/-1 Day" Checkbox 
    Tap                             ${checkbox} 

Tap Book Button
    Tap                             ${book_button}

Select Price to Confirm
    Wait Until Page Contains        ${price}
    Tap                             ${price}

Tap Confirm Button
    Tap                             ${confirm_order}

Verify Message Appears
    Wait Until Page Contains        ${text_from_city}
    Element Should Contain Text     ${text_from_city}       ${from_toronto} 
    Element Should Contain Text     ${text_to_city}         ${from_paris} 
    Element Should Contain Text     ${confirmation}         ${text_confirmation} 