*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.cleartrip.com/ 
${browser}    chrome
${xpath_roundtrip}    //input[@id='RoundTrip']

   
*** Test Cases ***
sample testcase 01
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    ${xpath_roundtrip}    
    sleep    5
    Close Browser             
    
