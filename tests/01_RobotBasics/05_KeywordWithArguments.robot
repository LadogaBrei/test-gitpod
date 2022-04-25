*** Test Cases ***
Call Keyword With Arguments
    Say    Something
    Say    Something Different
    Say    Hello

Call Keyword with 2 Arguments
    Say a word to someone    Hello    Bernd

Call Embedded Keyword
    Sage Hallo zu Bernd
    Sage Hi zu Lisa

Call a Keyword with Default Parameter
    Say Hello To    Bernd
    Say Hello To    Bernd    Hi

*** Keywords ***
Say
    [Arguments]    ${message}
    Log    ${message}

Say a word to someone
    [Arguments]    ${word}    ${someone}
    Log  ${someone}: ${word}

Sage ${word} zu ${someone}
    Log  ${someone}: ${word}


Say Hello To
    [Arguments]    ${name}    ${salutation}=Hello
    Log    ${salutation} ${name}
