*** Settings ***
Documentation       See Homepage Test Cases
Library             AppiumLibrary
Resource            ../PageObject/Homepage/HomepageKeyword.robot
Resource            ../PageObject/Base.robot
Test Setup          Base.Open Flight Application
Test Teardown       Close Application

*** Test Cases ***
User Should Be Able To See Homepage
    Verify Sign in Button
    Verify image background