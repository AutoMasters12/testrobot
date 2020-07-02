*** Settings ***
Library    SeleniumLibrary    
Library    Collections
    
*** Test Cases ***
sample test 01
    Run Keyword If    ${23}==${23}    Fail         
sample test 02
    Run Keyword If    ${23}==${23}
    ...    log    test passsed
sample test 03
    Run Keyword If    ${23}==${23}
    ...    log    test passsed
sample test 04
    Run Keyword If    ${23}==${23}    Fail  