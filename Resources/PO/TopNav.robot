*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGN_IN_LINK} =               Sign In
${SIGN_OUT_LINK} =              Sign Out

*** Keywords ***
Click "Sign In" Link
    click link                  ${SIGN_IN_LINK}

Click "Sign Out" Link
    click link                  ${SIGN_OUT_LINK}