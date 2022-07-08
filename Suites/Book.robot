*** Settings ***
Documentation       Book Flight Test Cases
Library             AppiumLibrary
Resource            ../PageObject/SearchFlight/BookKeyword.robot
Resource            ../PageObject/Login/LoginKeyword.robot
Resource            ../PageObject/Base.robot
Test Setup          Base.Open Flight Application
Test Teardown       Close Application

*** Variables ***
${fligt_num}        DA935       

*** Test Cases ***
User Should Be Able To Book Flight
    User Should Be Able To Login
    Tap Book Tab
    Select "From City" Dropdown
    Select "To City" Dropdown
    Select "Class" Dropdown
    Select "Start Date" 
    Select "End Date"
    Select "Flight" Radiobutton
    Select "+/-1 Day" Checklist 