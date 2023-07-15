*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =       Add Customer
${ADDCUSTOMER_EMAIL_TEXTBOX} =      id=EmailAddress
${ADDCUSTOMER_FIRST_NAME} =         id=FirstName
${ADDCUSTOMER_LAST_NAME} =          id=LastName
${ADDCUSTOMER_CITY} =               id=City
${ADDCUSTOMER_STATE} =              id=StateOrRegion
${ADDCUSTOMER_GENDER} =             gender
${ADDCUSTOMER_CHECKBOX} =           name=promos-name
${ADDCUSTOMER_SUBMIT_BUTTON} =      Submit

*** Keywords ***
Verify Page Loaded
    wait until page contains    ${ADDCUSTOMER_HEADER_LABEL}

Add new Customer
    Fill Customer details
    Click Submit button

Fill Customer details
    input text                  ${ADDCUSTOMER_EMAIL_TEXTBOX}            Avneet@test.com
    input text                  ${ADDCUSTOMER_FIRST_NAME}               Avneet
    input text                  ${ADDCUSTOMER_LAST_NAME}                Singh
    input text                  ${ADDCUSTOMER_CITY}                     Patiala
    select from list by value   ${ADDCUSTOMER_STATE}                    SD
    select radio button         ${ADDCUSTOMER_GENDER}                   male
    select checkbox             ${ADDCUSTOMER_CHECKBOX}

Click Submit button
    click button                ${ADDCUSTOMER_SUBMIT_BUTTON}