*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CUSTOMERS_HEADER_LABEL} =   Our Happy Customers
${CUSTOMERS_NEW_CUSTOMER_LINK} =       id=new-customer
${CUSTOMERS_ADD_CUSTOMER_LABEL} =  Success! New customer added.

*** Keywords ***
Verify Page Loaded
    wait until page contains    ${CUSTOMERS_HEADER_LABEL}

Click New Customer
    click link                  ${CUSTOMERS_NEW_CUSTOMER_LINK}

Verify Customer Added Successfully
    wait until page contains    ${CUSTOMERS_ADD_CUSTOMER_LABEL}