*** Settings ***
Documentation       Login Flow Test Cases
Library             AppiumLibrary
Resource            ../PageObject/Login/LoginKeyword.robot
Resource            ../PageObject/Base.robot
Test Setup          Base.Open Flight Application
Test Teardown       Close Application

*** Variables ***
${valid_email}      support@ngendigital.com 
${valid_password}   abc123

*** Test Cases ***
User Should Be Able To Login With Valid Data 
    Tap Sign in Icon
    Input Username              user_email=${valid_email} 
    Input Password              user_password=${valid_password}
    Tap Sign in Button
    Verify Account User Login