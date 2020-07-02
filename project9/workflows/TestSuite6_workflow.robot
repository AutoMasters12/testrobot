*** Settings ***
Library    SeleniumLibrary    
Library    Collections    

*** Variables ***
${a}    10
${c}    sample test
${d}    True
${e}    23.44
@{l}    234    123    242    2434    35    2353
&{dict}    1=abcd    2=dfds    3=sfsf    4=dvndfj




*** Test Cases ***
sample test 01
    log    ${l}
    log    ${l}[1]
    Remove Values From List    ${l}    234
    #List Should Contain Value    ${l}    242222    
    log    ${l}    
    ${res}    Get From List    ${l}    2
    log    ${dict}[2]
    ${keys}    Get Dictionary Keys    ${dict}    
    