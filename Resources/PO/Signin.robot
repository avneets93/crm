*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNIN_HEADER_LABEL} =        Login
${SIGNIN_EMAIL_TEXTBOX} =       id=email-id
${SIGNIN_PASSWORD_TEXTBOX} =    id=password
${SIGNIN_SUBMIT_BUTTON} =       id=submit-id

*** Keywords ***
Verify Page Loaded
    wait until page contains    ${SIGNIN_HEADER_LABEL}

Login with valid credentials
    [Arguments]     ${Email}    ${Password}
    Fill "Email" field      ${Email}
    Fill "Password" field   ${Password}
    Click "Submit" button

Fill "Email" field
    [Arguments]     ${Email}
    input text                  ${SIGNIN_EMAIL_TEXTBOX}         ${Email}

Fill "Password" field
    [Arguments]     ${Password}
    input text                  ${SIGNIN_PASSWORD_TEXTBOX}         ${Password}

Click "Submit" button
    click button                ${SIGNIN_SUBMIT_BUTTON}