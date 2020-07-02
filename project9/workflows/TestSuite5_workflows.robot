*** Settings ***
Library    SeleniumLibrary

Test Setup    precondition
Test Teardown   postcondition     

*** Variables ***
${url}    https://www.cleartrip.com/ 
${browser}    chrome
${xpath_roundtrip}    //input[@id='RoundTrip']


*** Keywords ***
precondition
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

postcondition
     Close Browser
   
*** Test Cases ***
sample testcase 01
    Click Element    ${xpath_roundtrip}    
    sleep    5
                
    
sample testcase 02
    Click Element    ${xpath_roundtrip}    
    sleep    5

    
sample testcase 03
    Click Element    ${xpath_roundtrip}    
    sleep    5

