param(
    [ValidateSet('up', 'build-geoai', 'up-geoai', 'down', 'logs', 'logs-geoai', 'spatialize', 'geoserver-init', 'reset')]
    [string] $Command = 'up'
)

$ErrorActionPreference = 'Stop'

function Invoke-Compose {
    param(
        [string[]] $ComposeArgs
    )

    & docker compose @ComposeArgs
    if ($LASTEXITCODE -ne 0) {
        throw "docker compose failed with exit code $LASTEXITCODE"
    }
}

switch ($Command) {
    'up' {
        Invoke-Compose -ComposeArgs @('up', '-d', 'postgis', 'geoserver')
    }
    'build-geoai' {
        Invoke-Compose -ComposeArgs @('--profile', 'geoai', 'build', 'geoai')
    }
    'up-geoai' {
        Invoke-Compose -ComposeArgs @('--profile', 'geoai', 'up', '-d', 'postgis', 'geoserver', 'geoai')
    }
    'down' {
        Invoke-Compose -ComposeArgs @('down')
    }
    'logs' {
        Invoke-Compose -ComposeArgs @('logs', '-f', 'postgis', 'geoserver')
    }
    'logs-geoai' {
        Invoke-Compose -ComposeArgs @('--profile', 'geoai', 'logs', '-f', 'postgis', 'geoserver', 'geoai')
    }
    'spatialize' {
        Invoke-Compose -ComposeArgs @('--profile', 'tools', 'run', '--rm', 'postgis-spatialize')
        Invoke-Compose -ComposeArgs @('--profile', 'tools', 'run', '--rm', 'geoserver-init')
    }
    'geoserver-init' {
        Invoke-Compose -ComposeArgs @('--profile', 'tools', 'run', '--rm', 'geoserver-init')
    }
    'reset' {
        Invoke-Compose -ComposeArgs @('down', '-v')
        Invoke-Compose -ComposeArgs @('up', '-d', 'postgis', 'geoserver')
    }
}
