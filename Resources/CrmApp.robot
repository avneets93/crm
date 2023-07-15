*** Settings ***
Resource    ../Resources/PO/AddCustomers.robot
Resource    ../Resources/PO/Customers.robot
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/LoggedOut.robot
Resource    ../Resources/PO/Signin.robot
Resource    ../Resources/PO/TopNav.robot

*** Variables ***

*** Keywords ***
Go to "Home" Page
    Home.Navigate to
    Home.Verify Page Loaded

Login with valid credentials
    [Arguments]         ${Email}    ${Password}
    TopNav.Click "Sign In" Link
    Signin.Verify Page Loaded
    Signin.Login with valid credentials    ${Email}    ${Password}
    Customers.Verify Page Loaded

Add new Customer
    Customers.Click New Customer
    AddCustomers.Verify Page Loaded
    AddCustomers.Add new Customer
    Customers.Verify Customer Added Successfully

Sign Out
    TopNav.Click "Sign Out" Link
    LoggedOut.Verify Page Loaded