# Tests for ConvertTo-*, ConvertFrom-*

Describe 'Number conversion tests' {
  BeforeAll {
    # Import WIP modules to be tested
    foreach ($module in $(Get-ChildItem -Path (Join-Path $PSScriptRoot "..") -Filter *.psm1)) {
      Write-Output "Importing $module"
      Import-Module -Name $module.FullName -Prefix 'WIP' -Force
    }
  }

  Describe "ConvertFrom-Binary" {
    Context "Simple positive tests" {
      It "Converts binary to decimal correctly" {
        ConvertFrom-WIPBinary -Value "0010 1010" | Should -Be 42
      }
    }
  }

  Describe "ConvertTo-Binary" {
    Context "Simple positive tests" {
      It "Converts decimal to binary correctly" {
        ConvertTo-WIPBinary -Value 42 | Should -Be "0010 1010"
      }
    }
  }

  Describe "ConvertFrom-Octal" {
    Context "Simple positive tests" {
      It "Converts octal to decimal correctly" {
        ConvertFrom-WIPOctal -Value 052 | Should -Be 42
      }
    }
  }

  Describe "ConvertTo-Octal" {
    Context "Simple positive tests" {
      It "Converts decimal to octal correctly" {
        ConvertTo-WIPOctal -Value 42 | Should -Be "052"
      }
    }
  }

  Describe "ConvertFrom-Hexadecimal" {
    Context "Simple positive tests" {
      It "Converts hexadecimal to decimal correctly" {
        ConvertFrom-WIPHexadecimal -Value 2a | Should -Be 42
      }
    }
  }

  Describe "ConvertTo-Hexadecimal" {
    Context "Simple positive tests" {
      It "Converts decimal to hexadecimal correctly" {
        ConvertTo-WIPHexadecimal -Value 42 | Should -Be "2a"
      }
    }
  }

}
