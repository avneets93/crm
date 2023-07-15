*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    #set selenium speed          0.2s
    set selenium timeout        10s

    open browser                about:blank   ${BROWSER}
    #set window size            maximize browser window

End Web Test

    sleep                       3s
    close all browsers
