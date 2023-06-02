@{

    RootModule        = 'NumberConverter.psm1'
    ModuleVersion     = '1.0.1'
    Description       = 'Convert and format numbers to and from widely used bases: binary, octal, hexadecimal'

    GUID              = '5fa010c9-dc18-466b-9db9-383e24e6f949'

    Author            = 'Matthäus Falkowski'
    Copyright         = 'Copyright (c) 2022 Matthäus Falkowski. MIT License.'

    # Exports
    FunctionsToExport = @(
        'ConvertFrom-Binary',
        'ConvertTo-Binary',
        'ConvertFrom-Octal',
        'ConvertTo-Octal',
        'ConvertFrom-Hexadecimal',
        'ConvertTo-Hexadecimal'
    )
    CmdletsToExport   = @()
    VariablesToExport = @()
    AliasesToExport   = @()

    PrivateData       = @{

        PSData = @{

            Tags       = @('numbers', 'converter', 'binary', 'octal', 'hexadecimal')
            ProjectUri = 'https://github.com/wookiefriseur/ps_numberconverter/'
            LicenseUri = 'https://github.com/wookiefriseur/valor-modulis/blob/main/LICENSE.md'
        }

    }

}
