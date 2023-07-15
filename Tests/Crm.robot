*** Settings ***
Documentation       This is some basic info about the suite
Resource            ../Resources/common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***
${BROWSER} =                    chrome
${URL} =                        https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =          avneet@robot.com
${VALID_LOGIN_PASS} =           Test123

*** Test Cases ***

Home page should load
    [Documentation]             Test the Home Page
    [Tags]                      1001    Smoke   Login
    CrmApp.Go to "Home" Page

Should be able to Login with Valid Credentials
    [Documentation]             Test the Login feature
    [Tags]                      1002    Smoke   Login
    CrmApp.Go to "Home" Page
    CrmApp.Login with valid credentials             ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASS}

Should be able to Logout
    [Documentation]             Test the Sign out feature
    [Tags]                      1004    Smoke   Login
    CrmApp.Go to "Home" Page
    CrmApp.Login with valid credentials             ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASS}
    CrmApp.Sign Out

Should be able to add new customers
    [Documentation]             Test Adding new customer
    [Tags]                      1006    Smoke   Contacts
    CrmApp.Go to "Home" Page
    CrmApp.Login with valid credentials             ${VALID_LOGIN_EMAIL}    ${VALID_LOGIN_PASS}
    CrmApp.Add new Customer
    CrmApp.Sign Out

