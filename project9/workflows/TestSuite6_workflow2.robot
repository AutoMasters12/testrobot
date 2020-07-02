*** Settings ***
Library    SeleniumLibrary    
Library    Collections

Test Template    add two numbers        

*** Keywords ***
add two numbers
    [Arguments]    ${a}    ${b}
    ${res}    Evaluate    ${a}+${b}  
    log    ${res}  

*** Test Cases ***
tc01    10    20
tc02    20    12
tc03    234    354
tc04    24    345 
    