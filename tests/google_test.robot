*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Google Search Test
    Open Browser    https://www.google.com    chrome
    Input Text      name=q    Robot Framework
    Press Keys      name=q    RETURN
    Sleep           2s
    Page Should Contain    Robot Framework
    Close Browser
