*** Settings ***


*** Variables ***
${QUESTION}    Guess my name
${EXPECTED_NAME}    daniel

*** Test Cases ***
Guess My Name
    ${name}    Get Value From User    ${QUESTION}:
    Should Be Equal    ${name.lower()}    ${EXPECTED_NAME}

    # IF  "${name}"=="${EXPECTED_NAME}"
    #     Log To Console    Yeah
    # ELSE
    #     Fail    You loose
    # END


Guess My Name 3 Trials

    ${round}    Set Variable    ${1}

    WHILE  $True
        ${name}    Get Value From User    ${QUESTION}, you have 3 trials:

        TRY
            IF  $name==$EXPECTED_NAME    # Python version
            #IF  "${name}"=="${EXPECTED_NAME}"    Robot version
                Log To Console    Yeah
                BREAK
            ELSE
                Fail    You loose
            END
        EXCEPT  You loose  AS    ${e}
            IF  $round>2
                Fail    ${e}
            END
        END

        #${round}    Set Variable    ${round+1}    # Python version
        ${round}    Set Variable    ${{$round+1}}    # Robot version
    END


*** Keywords ***
Get Value From User
    [Arguments]    ${message}
    Log To Console   ${message}
    ${result}    Evaluate    input()
    RETURN    ${result}
