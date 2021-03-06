﻿---
external help file: d365fo.tools-help.xml
Module Name: d365fo.tools
online version:
schema: 2.0.0
---

# Get-D365ProductInformation

## SYNOPSIS
Returns information about D365FO

## SYNTAX

```
Get-D365ProductInformation [<CommonParameters>]
```

## DESCRIPTION
Gets detailed information about application and platform

## EXAMPLES

### EXAMPLE 1
```
Get-ProductInfoProvider
```

This will get product, platform and application version details for the environment

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
The cmdlet wraps the call against a dll file that is shipped with Dynamics 365 for Finance & Operations.
The call to the dll file gets all relevant product details for the environment.

Author: Rasmus Andersen (@ITRasmus)

## RELATED LINKS
