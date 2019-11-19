# TimeKit

[![Swift5 compatible][Swift5Badge]][Swift5Link]
[![SPM compatible][SPMBadge]][SPMLink]

[Swift5Badge]: https://img.shields.io/badge/swift-5-orange.svg?style=flat
[Swift5Link]: https://developer.apple.com/swift/

[SPMBadge]: https://img.shields.io/badge/SPM-compatible-brightgreen.svg
[SPMLink]: https://github.com/apple/swift-package-manager

Models to represent any time, moment, period, even abstract (work in progress)


## Time

Time model represents an abstract model for any time, moment in time, time period or recurring interval. 
Currently it is represented by: 

- Moment - abstract moment in time or specific time and date 

- AnyPeriod -  abstract or specific time interval

- Recurrence - recurring time interval, optionally limited by end date


## Moment 

Can represent:
- specific date
- abstract now, present, future, past, always, never, etc 


## AnyPeriod

Can represent:
- specific date period 
- specififc time interval 
- part of the period
- abstract current, previous / past, future period


## Recurrence 

Can represent:
- repeating interval, starting and ending at specific dates
- abstract repeating interval, optionally limited by end date

