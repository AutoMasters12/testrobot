*** Variables ***
${a}    10
${b}

*** Test Cases ***
sample test01
    log    ${a}
    ${b}    Set Variable    20
    Set Test Variable     ${b}    
    log    ${b}    
    Set Suite Variable    ${b}    

sample test02
    log    ${a}
    log    ${b}
    