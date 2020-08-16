# MonthlyCalendar

## Overview
Library that returns an array of monthly calendars for a specified date.

## Usage
### import
```swift
import MonthlyCalendar
```
### call
Starting Monday
```swift
let mc = MonthlyCalendar(day: Date())
```

Starting Sunday
```swift
let mc = MonthlyCalendar(day: Date(), startSunday: true)
```

### get
#### days : Monthly Calendar Array
```swift
let mc = MonthlyCalendar(day: Date())
let days: [[Int]] = mc.days
```
Result Example
```
[[0, 1, 2, 3, 4, 5, 6], 
 [7, 8, 9, 10, 11, 12, 13], 
 [14, 15, 16, 17, 18, 19, 20], 
 [21, 22, 23, 24, 25, 26, 27], 
 [28, 29, 30, 0, 0, 0, 0]]
```

Array : \[week]\[day of the week]  
day of the week  
Starting Monday : Index 0 is monday  
Starting Sunday : Index 0 is sunday  

#### year : The year of the specified date

#### month : The month of the specified date

#### dayCount : The number of days in a month on a given date
