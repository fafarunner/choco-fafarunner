﻿# choco-fafarunner

[![Auto update](https://github.com/fafarunner/choco-fafarunner/actions/workflows/autoupdate_all.yml/badge.svg)](https://github.com/fafarunner/choco-fafarunner/actions/workflows/autoupdate_all.yml)
[![Chocolatey Version](https://img.shields.io/chocolatey/v/fafarunner)](https://community.chocolatey.org/packages/fafarunner)

[Quick start guide](https://docs.chocolatey.org/en-us/create/create-packages-quick-start/#quick-start-guide)

```powershell
# Run as administrator
choco install fafarunner --version="1.0.0-rc398" --prerelease --source .
```

```powershell
choco apikey --api-key [API_KEY_HERE] -source https://push.chocolatey.org/

choco push fafarunner.1.0.0-rc398.nupkg --source https://push.chocolatey.org/
```
