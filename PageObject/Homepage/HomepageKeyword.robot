*** Settings ***
Documentation       See Homepage Related Keyword
Library             AppiumLibrary
Variables           ../Homepage/HomepageLocator.yaml

*** Keywords ***
Verify Sign in Button
    Element Should Be Visible         ${signin}

Verify image background
    Element Should Be Visible         ${image}