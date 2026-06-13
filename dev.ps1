param(
    [ValidateSet('up', 'down', 'logs', 'spatialize', 'geoserver-init', 'reset')]
    [string] $Command = 'up'
)

$ErrorActionPreference = 'Stop'

function Invoke-Compose {
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $ComposeArgs
    )

    & docker compose @ComposeArgs
    if ($LASTEXITCODE -ne 0) {
        throw "docker compose failed with exit code $LASTEXITCODE"
    }
}

switch ($Command) {
    'up' {
        Invoke-Compose up -d postgis geoserver
    }
    'down' {
        Invoke-Compose down
    }
    'logs' {
        Invoke-Compose logs -f postgis geoserver
    }
    'spatialize' {
        Invoke-Compose --profile tools run --rm postgis-spatialize
        Invoke-Compose --profile tools run --rm geoserver-init
    }
    'geoserver-init' {
        Invoke-Compose --profile tools run --rm geoserver-init
    }
    'reset' {
        Invoke-Compose down -v
        Invoke-Compose up -d postgis geoserver
    }
}
