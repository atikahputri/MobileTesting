*** Settings ***
Documentation       Search Flight Number Test Cases
Library             AppiumLibrary
Resource            ../PageObject/SearchFlight/SearchKeyword.robot
Resource            ../PageObject/Login/LoginKeyword.robot
Resource            ../PageObject/Base.robot
Test Setup          Base.Open Flight Application
Test Teardown       Close Application

*** Variables ***
${fligt_num}        DA935       

*** Test Cases ***
User Should Be Able To Search Flight Number
    User Should Be Able To Login
    Tap Search Tab
    Input Flight Number             flight_id= ${fligt_num}      
    Tap Search Button
    Verify Message