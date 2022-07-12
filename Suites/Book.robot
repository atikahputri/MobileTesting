*** Settings ***
Documentation       Book Flight Test Cases
Library             AppiumLibrary
Resource            ../PageObject/BookFlight/BookKeyword.robot
Resource            ../PageObject/Login/LoginKeyword.robot
Resource            ../PageObject/Base.robot
Test Setup          Base.Open Flight Application
Test Teardown       Close Application

*** Test Cases ***
User Should Be Able To Book Flight (Torotno -> Paris -> First Class)
    User Should Be Able To Login
    Tap Book Tab
    Select "From City" Dropdown
    Select "To City" Dropdown
    Select "Class" Dropdown
    Select "Start Date" 
    Select "End Date"
    Select "Flight" Radiobutton
    Select "+/-1 Day" Checkbox
    Tap Book Button
    Select Price to Confirm
    Tap Confirm Button
    Verify Message Appears