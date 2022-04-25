*** Variables ***
${A VARIABLE}    A String Value
@{A LIST VARIABLE}    first    second    third
&{A DICTIONARY VARIABLE}    name=Tester    surename=Bernd    address=Teststreet 42    a town=Testtown

${A EXTERNAL VARIABLE}    default value

*** Test Cases ***
Use Simple Variable
    Log    ${A Variable}
    A Keyword That Uses A Variable

Use List Variable
    Log    ${A LIST VARIABLE}
    Log Many    @{A LIST VARIABLE}

    FOR  ${i}  IN  @{A LIST VARIABLE}
        Log    ${i}
    END

Use Dictionary Variable
    Log    ${A DICTIONARY VARIABLE}
    Log Many    &{A DICTIONARY VARIABLE}

    FOR  ${i}  IN  &{A DICTIONARY VARIABLE}
        Log    ${i}
    END

    Log    ${A DICTIONARY VARIABLE["name"]}
    Log    ${A DICTIONARY VARIABLE["surename"]}
    Log    ${A DICTIONARY VARIABLE["address"]}

    Log    ${A DICTIONARY VARIABLE.name}
    Log    ${A DICTIONARY VARIABLE.surename}
    Log    ${A DICTIONARY VARIABLE.address}
    Log    ${A DICTIONARY VARIABLE["a town"]}

Use Environment Variable
    Log    %{USERNAME}
    Log    %{UNDEFINED=default value}

Use External Variable
    Log To Console   ${A EXTERNAL VARIABLE}


*** Keywords ***
A Keyword That Uses A Variable
    Log To Console    ${A Variable}
