*** Settings ***
Documentation       Login Flow Test Cases
Library             AppiumLibrary
Resource            ../PageObject/Login/LoginKeyword.robot
Resource            ../PageObject/Base.robot
Test Setup          Base.Open Flight Application
Test Teardown       Close Application

*** Variables ***
${valid_email}          support@ngendigital.com 
${valid_password}       abc123
${invalid_email}        atikah@gmail.com
${invalid_password}     salahpassword

*** Test Cases ***
User Should Be Able To Login With Valid Data 
    Tap Sign in Icon
    Input Username              user_email=${valid_email} 
    Input Password              user_password=${valid_password}
    Tap Sign in Button
    Verify Account User Login

User Not Be Able To Login With Invalid Password
    Tap Sign in Icon
    Input Username              user_email=${valid_email}
    Input Password              user_password=${invalid_password}
    Tap Sign in Button   

User Not Be Able To Login With Unregistered Email
    Tap Sign in Icon
    Input Username              user_email=${invalid_email}
    Input Password              user_password=${invalid_password}
    Tap Sign in Button       