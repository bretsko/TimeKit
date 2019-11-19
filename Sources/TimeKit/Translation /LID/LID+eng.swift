
extension LID {
    
    var Lang_en: TimeTranslRuleSet {
        
        //MARK: long
        
        func long() -> [TimeTranslation] {
            
            //"quarter" : [
            //    "next" : "next quarter",
            //    "previous" : "last quarter",
            //    "current" : "this quarter",
            //    "future" : [
            //        "one" : "in {0} quarter",
            //        "other" : "in {0} quarters"
            //    ],
            //    "past" : [
            //        "one" : "{0} quarter ago",
            //        "other" : "{0} quarters ago"
            //    ]
            //],
            func quarter() -> [TimeTranslation] {
                //"next" : "next quarter",
                // "previous" : "last quarter",
                // "current" : "this quarter",
                // "future" : [
                //     "one" : "in {0} quarter",
                //     "other" : "in {0} quarters"
                // ],
                // "past" : [
                //     "one" : "{0} quarter ago",
                //     "other" : "{0} quarters ago"
                //]
                fatalError()
            }
            
            //"month" : [
            //    "next" : "next month",
            //    "past" : [
            //        "one" : "{0} month ago",
            //        "other" : "{0} months ago"
            //    ],
            //    "future" : [
            //        "one" : "in {0} month",
            //        "other" : "in {0} months"
            //    ],
            //    "previous" : "last month",
            //    "current" : "this month"
            //],
            func month() -> [TimeTranslation] {
                //"next" : "next month",
                //"past" : [
                //    "one" : "{0} month ago",
                //    "other" : "{0} months ago"
                //],
                //"future" : [
                //    "one" : "in {0} month",
                //    "other" : "in {0} months"
                //],
                //"previous" : "last month",
                //"current" : "this month"
                fatalError()
            }
            
            //"hour" : [
            //    "past" : [
            //        "other" : "{0} hours ago",
            //        "one" : "{0} hour ago"
            //    ],
            //    "future" : [
            //        "one" : "in {0} hour",
            //        "other" : "in {0} hours"
            //    ],
            //    "current" : "this hour"
            //],
            func hour() -> [TimeTranslation] {
                //"past" : [
                //    "other" : "{0} hours ago",
                //    "one" : "{0} hour ago"
                //],
                //"future" : [
                //    "one" : "in {0} hour",
                //    "other" : "in {0} hours"
                //],
                //"current" : "this hour"
                fatalError()
            }
            
            //"week" : [
            //    "previous" : "last week",
            //    "current" : "this week",
            //    "future" : [
            //        "one" : "in {0} week",
            //        "other" : "in {0} weeks"
            //    ],
            //    "next" : "next week",
            //    "past" : [
            //        "one" : "{0} week ago",
            //        "other" : "{0} weeks ago"
            //    ]
            //],
            func week() -> [TimeTranslation] {
                //"previous" : "last week",
                //"current" : "this week",
                //"future" : [
                //    "one" : "in {0} week",
                //    "other" : "in {0} weeks"
                //],
                //"next" : "next week",
                //"past" : [
                //    "one" : "{0} week ago",
                //    "other" : "{0} weeks ago"
                //]
                fatalError()
            }
            
            //"minute" : [
            //    "current" : "this minute",
            //    "past" : [
            //        "one" : "{0} minute ago",
            //        "other" : "{0} minutes ago"
            //    ],
            //    "future" : [
            //        "one" : "in {0} minute",
            //        "other" : "in {0} minutes"
            //    ]
            //],
            func minute() -> [TimeTranslation] {
                //"current" : "this minute",
                //"past" : [
                //    "one" : "{0} minute ago",
                //    "other" : "{0} minutes ago"
                //],
                //"future" : [
                //    "one" : "in {0} minute",
                //    "other" : "in {0} minutes"
                //]
                fatalError()
            }
            
            //"year" : [
            //    "next" : "next year",
            //    "future" : [
            //        "one" : "in {0} year",
            //        "other" : "in {0} years"
            //    ],
            //    "past" : [
            //        "other" : "{0} years ago",
            //        "one" : "{0} year ago"
            //    ],
            //    "current" : "this year",
            //    "previous" : "last year"
            //],
            func year() -> [TimeTranslation] {
                //"next" : "next year",
                //"future" : [
                //    "one" : "in {0} year",
                //    "other" : "in {0} years"
                //],
                //"past" : [
                //    "other" : "{0} years ago",
                //    "one" : "{0} year ago"
                //],
                //"current" : "this year",
                //"previous" : "last year"
                fatalError()
            }
            
            //"second" : [
            //    "current" : "now",
            //    "past" : [
            //        "other" : "{0} seconds ago",
            //        "one" : "{0} second ago"
            //    ],
            //    "future" : [
            //        "one" : "in {0} second",
            //        "other" : "in {0} seconds"
            //    ]
            //],
            func second() -> [TimeTranslation] {
                //"current" : "now",
                //  "past" : [
                //      "other" : "{0} seconds ago",
                //      "one" : "{0} second ago"
                //  ],
                //  "future" : [
                //      "one" : "in {0} second",
                //      "other" : "in {0} seconds"
                //  ]
                fatalError()
            }
            
            //"day" : [
            //    "next" : "tomorrow",
            //    "past" : [
            //        "other" : "{0} days ago",
            //        "one" : "{0} day ago"
            //    ],
            //    "future" : [
            //        "other" : "in {0} days",
            //        "one" : "in {0} day"
            //    ],
            //    "previous" : "yesterday",
            //    "current" : "today"
            //]
            func day() -> [TimeTranslation] {
                fatalError()
//                return [
//                    TimeTranslation(AnyPeriod.day, current: ["today"]),
//                    TimeTranslation(AnyPeriod.day, previous: ["yesterday"]),
//                    TimeTranslation(AnyPeriod.day, next: ["tomorrow"]),
//                    TimeTranslation(AnyPeriod.day, oneUnitAgo: ["{0} day ago"]),
//                    TimeTranslation(AnyPeriod.day, inOneUnit: ["in {0} day"]),
//                    TimeTranslation(AnyPeriod.day, manyUnitsAgo: ["{0} days ago"]),
//                    TimeTranslation(AnyPeriod.day, inManyUnits: ["in {0} days"]),
//                ]
            }
            let now = [TimeTranslation(now: ["now"])]
            return now + second() + minute() + hour() + day() + week() + month() + year() + quarter()
        }
        
        
        //MARK: short
        
        //                "month" : [
        //                    "future" : "in {0} mo.",
        //                    "previous" : "last mo.",
        //                    "current" : "this mo.",
        //                    "next" : "next mo.",
        //                    "past" : "{0} mo. ago"
        //                ],
        //                "day" : [
        //                    "past" : [
        //                        "one" : "{0} day ago",
        //                        "other" : "{0} days ago"
        //                    ],
        //                    "previous" : "yesterday",
        //                    "current" : "today",
        //                    "next" : "tomorrow",
        //                    "future" : [
        //                        "other" : "in {0} days",
        //                        "one" : "in {0} day"
        //                    ]
        //                ],
        //                "hour" : [
        //                    "current" : "this hour",
        //                    "future" : "in {0} hr.",
        //                    "past" : "{0} hr. ago"
        //                ],
        //                "second" : [
        //                    "past" : "{0} sec. ago",
        //                    "future" : "in {0} sec.",
        //                    "current" : "now"
        //                ],
        //                "year" : [
        //                    "current" : "this yr.",
        //                    "previous" : "last yr.",
        //                    "future" : "in {0} yr.",
        //                    "past" : "{0} yr. ago",
        //                    "next" : "next yr."
        //                ],
        //                "week" : [
        //                    "previous" : "last wk.",
        //                    "current" : "this wk.",
        //                    "future" : "in {0} wk.",
        //                    "past" : "{0} wk. ago",
        //                    "next" : "next wk."
        //                ],
        //                "minute" : [
        //                    "current" : "this minute",
        //                    "future" : "in {0} min.",
        //                    "past" : "{0} min. ago"
        //                ],
        //                "now" : "now",
        //                "quarter" : [
        //                    "next" : "next qtr.",
        //                    "previous" : "last qtr.",
        //                    "current" : "this qtr.",
        //                    "past" : [
        //                        "other" : "{0} qtrs. ago",
        //                        "one" : "{0} qtr. ago"
        //                    ],
        //                    "future" : [
        //                        "one" : "in {0} qtr.",
        //                        "other" : "in {0} qtrs."
        //                    ]
        //                ]
        //            ],
        func short() -> [TimeTranslation] {
            //TODO: replace the body with data above !!!
            fatalError()
            
            //            //"quarter" : [
            //            //    "next" : "next quarter",
            //            //    "previous" : "last quarter",
            //            //    "current" : "this quarter",
            //            //    "future" : [
            //            //        "one" : "in {0} quarter",
            //            //        "other" : "in {0} quarters"
            //            //    ],
            //            //    "past" : [
            //            //        "one" : "{0} quarter ago",
            //            //        "other" : "{0} quarters ago"
            //            //    ]
            //            //],
            //            func quarter() -> [TimeTranslation] {
            //                //"next" : "next quarter",
            //                // "previous" : "last quarter",
            //                // "current" : "this quarter",
            //                // "future" : [
            //                //     "one" : "in {0} quarter",
            //                //     "other" : "in {0} quarters"
            //                // ],
            //                // "past" : [
            //                //     "one" : "{0} quarter ago",
            //                //     "other" : "{0} quarters ago"
            //                //]
            //                fatalError()
            //            }
            //
            //            //"month" : [
            //            //    "next" : "next month",
            //            //    "past" : [
            //            //        "one" : "{0} month ago",
            //            //        "other" : "{0} months ago"
            //            //    ],
            //            //    "future" : [
            //            //        "one" : "in {0} month",
            //            //        "other" : "in {0} months"
            //            //    ],
            //            //    "previous" : "last month",
            //            //    "current" : "this month"
            //            //],
            //            func month() -> [TimeTranslation] {
            //                //"next" : "next month",
            //                //"past" : [
            //                //    "one" : "{0} month ago",
            //                //    "other" : "{0} months ago"
            //                //],
            //                //"future" : [
            //                //    "one" : "in {0} month",
            //                //    "other" : "in {0} months"
            //                //],
            //                //"previous" : "last month",
            //                //"current" : "this month"
            //                fatalError()
            //            }
            //
            //            //"hour" : [
            //            //    "past" : [
            //            //        "other" : "{0} hours ago",
            //            //        "one" : "{0} hour ago"
            //            //    ],
            //            //    "future" : [
            //            //        "one" : "in {0} hour",
            //            //        "other" : "in {0} hours"
            //            //    ],
            //            //    "current" : "this hour"
            //            //],
            //            func hour() -> [TimeTranslation] {
            //                //"past" : [
            //                //    "other" : "{0} hours ago",
            //                //    "one" : "{0} hour ago"
            //                //],
            //                //"future" : [
            //                //    "one" : "in {0} hour",
            //                //    "other" : "in {0} hours"
            //                //],
            //                //"current" : "this hour"
            //                fatalError()
            //            }
            //
            //            //"week" : [
            //            //    "previous" : "last week",
            //            //    "current" : "this week",
            //            //    "future" : [
            //            //        "one" : "in {0} week",
            //            //        "other" : "in {0} weeks"
            //            //    ],
            //            //    "next" : "next week",
            //            //    "past" : [
            //            //        "one" : "{0} week ago",
            //            //        "other" : "{0} weeks ago"
            //            //    ]
            //            //],
            //            func week() -> [TimeTranslation] {
            //                //"previous" : "last week",
            //                //"current" : "this week",
            //                //"future" : [
            //                //    "one" : "in {0} week",
            //                //    "other" : "in {0} weeks"
            //                //],
            //                //"next" : "next week",
            //                //"past" : [
            //                //    "one" : "{0} week ago",
            //                //    "other" : "{0} weeks ago"
            //                //]
            //                fatalError()
            //            }
            //
            //            //"minute" : [
            //            //    "current" : "this minute",
            //            //    "past" : [
            //            //        "one" : "{0} minute ago",
            //            //        "other" : "{0} minutes ago"
            //            //    ],
            //            //    "future" : [
            //            //        "one" : "in {0} minute",
            //            //        "other" : "in {0} minutes"
            //            //    ]
            //            //],
            //            func minute() -> [TimeTranslation] {
            //                //"current" : "this minute",
            //                //"past" : [
            //                //    "one" : "{0} minute ago",
            //                //    "other" : "{0} minutes ago"
            //                //],
            //                //"future" : [
            //                //    "one" : "in {0} minute",
            //                //    "other" : "in {0} minutes"
            //                //]
            //                fatalError()
            //            }
            //
            //            //"year" : [
            //            //    "next" : "next year",
            //            //    "future" : [
            //            //        "one" : "in {0} year",
            //            //        "other" : "in {0} years"
            //            //    ],
            //            //    "past" : [
            //            //        "other" : "{0} years ago",
            //            //        "one" : "{0} year ago"
            //            //    ],
            //            //    "current" : "this year",
            //            //    "previous" : "last year"
            //            //],
            //            func year() -> [TimeTranslation] {
            //                //"next" : "next year",
            //                //"future" : [
            //                //    "one" : "in {0} year",
            //                //    "other" : "in {0} years"
            //                //],
            //                //"past" : [
            //                //    "other" : "{0} years ago",
            //                //    "one" : "{0} year ago"
            //                //],
            //                //"current" : "this year",
            //                //"previous" : "last year"
            //                fatalError()
            //            }
            //
            //            //"second" : [
            //            //    "current" : "now",
            //            //    "past" : [
            //            //        "other" : "{0} seconds ago",
            //            //        "one" : "{0} second ago"
            //            //    ],
            //            //    "future" : [
            //            //        "one" : "in {0} second",
            //            //        "other" : "in {0} seconds"
            //            //    ]
            //            //],
            //            func second() -> [TimeTranslation] {
            //                //"current" : "now",
            //                //  "past" : [
            //                //      "other" : "{0} seconds ago",
            //                //      "one" : "{0} second ago"
            //                //  ],
            //                //  "future" : [
            //                //      "one" : "in {0} second",
            //                //      "other" : "in {0} seconds"
            //                //  ]
            //                fatalError()
            //            }
            //
            //            //"day" : [
            //            //    "next" : "tomorrow",
            //            //    "past" : [
            //            //        "other" : "{0} days ago",
            //            //        "one" : "{0} day ago"
            //            //    ],
            //            //    "future" : [
            //            //        "other" : "in {0} days",
            //            //        "one" : "in {0} day"
            //            //    ],
            //            //    "previous" : "yesterday",
            //            //    "current" : "today"
            //            //]
            //            func day() -> [TimeTranslation] {
            //                return [
            //                    .next(["tomorrow"]),
            //                    .past(["{0} days ago", "{0} day ago"]),
            //                    .future(["in {0} days", "in {0} day"]),
            //                    .previous(["yesterday"]),
            //                    .current(["today"]),
            //                ]
            //            }
            //            return [TimeTranslation](now: "now", second: second(), minute: minute(), hour: hour(), halfHour: nil, day: day(), week: week(), month: month(), year: year(), quarter: quarter(), other: nil)
        }
        
        
        //MARK: narrow
        
        //            "narrow" : [
        //                "hour" : [
        //                    "future" : "in {0} hr.",
        //                    "current" : "this hour",
        //                    "past" : "{0} hr. ago"
        //                ],
        //                "week" : [
        //                    "next" : "next wk.",
        //                    "previous" : "last wk.",
        //                    "past" : "{0} wk. ago",
        //                    "current" : "this wk.",
        //                    "future" : "in {0} wk."
        //                ],
        //                "minute" : [
        //                    "current" : "this minute",
        //                    "past" : "{0} min. ago",
        //                    "future" : "in {0} min."
        //                ],
        //                "second" : [
        //                    "current" : "now",
        //                    "past" : "{0} sec. ago",
        //                    "future" : "in {0} sec."
        //                ],
        //                "now" : "now",
        //                "month" : [
        //                    "past" : "{0} mo. ago",
        //                    "current" : "this mo.",
        //                    "next" : "next mo.",
        //                    "previous" : "last mo.",
        //                    "future" : "in {0} mo."
        //                ],
        //                "day" : [
        //                    "current" : "today",
        //                    "future" : [
        //                        "one" : "in {0} day",
        //                        "other" : "in {0} days"
        //                    ],
        //                    "previous" : "yesterday",
        //                    "next" : "tomorrow",
        //                    "past" : [
        //                        "one" : "{0} day ago",
        //                        "other" : "{0} days ago"
        //                    ]
        //                ],
        //                "year" : [
        //                    "previous" : "last yr.",
        //                    "current" : "this yr.",
        //                    "past" : "{0} yr. ago",
        //                    "next" : "next yr.",
        //                    "future" : "in {0} yr."
        //                ],
        //                "quarter" : [
        //                    "previous" : "last qtr.",
        //                    "next" : "next qtr.",
        //                    "past" : [
        //                        "one" : "{0} qtr. ago",
        //                        "other" : "{0} qtrs. ago"
        //                    ],
        //                    "future" : [
        //                        "one" : "in {0} qtr.",
        //                        "other" : "in {0} qtrs."
        //                    ],
        //                    "current" : "this qtr."
        //                ]
        //            ]
        //        ]
        func narrow() -> [TimeTranslation] {
            //TODO: replace the body with data above !!!
            fatalError()
            
            //            //"quarter" : [
            //            //    "next" : "next quarter",
            //            //    "previous" : "last quarter",
            //            //    "current" : "this quarter",
            //            //    "future" : [
            //            //        "one" : "in {0} quarter",
            //            //        "other" : "in {0} quarters"
            //            //    ],
            //            //    "past" : [
            //            //        "one" : "{0} quarter ago",
            //            //        "other" : "{0} quarters ago"
            //            //    ]
            //            //],
            //            func quarter() -> [TimeTranslation] {
            //                //"next" : "next quarter",
            //                // "previous" : "last quarter",
            //                // "current" : "this quarter",
            //                // "future" : [
            //                //     "one" : "in {0} quarter",
            //                //     "other" : "in {0} quarters"
            //                // ],
            //                // "past" : [
            //                //     "one" : "{0} quarter ago",
            //                //     "other" : "{0} quarters ago"
            //                //]
            //                fatalError()
            //            }
            //
            //            //"month" : [
            //            //    "next" : "next month",
            //            //    "past" : [
            //            //        "one" : "{0} month ago",
            //            //        "other" : "{0} months ago"
            //            //    ],
            //            //    "future" : [
            //            //        "one" : "in {0} month",
            //            //        "other" : "in {0} months"
            //            //    ],
            //            //    "previous" : "last month",
            //            //    "current" : "this month"
            //            //],
            //            func month() -> [TimeTranslation] {
            //                //"next" : "next month",
            //                //"past" : [
            //                //    "one" : "{0} month ago",
            //                //    "other" : "{0} months ago"
            //                //],
            //                //"future" : [
            //                //    "one" : "in {0} month",
            //                //    "other" : "in {0} months"
            //                //],
            //                //"previous" : "last month",
            //                //"current" : "this month"
            //                fatalError()
            //            }
            //
            //            //"hour" : [
            //            //    "past" : [
            //            //        "other" : "{0} hours ago",
            //            //        "one" : "{0} hour ago"
            //            //    ],
            //            //    "future" : [
            //            //        "one" : "in {0} hour",
            //            //        "other" : "in {0} hours"
            //            //    ],
            //            //    "current" : "this hour"
            //            //],
            //            func hour() -> [TimeTranslation] {
            //                //"past" : [
            //                //    "other" : "{0} hours ago",
            //                //    "one" : "{0} hour ago"
            //                //],
            //                //"future" : [
            //                //    "one" : "in {0} hour",
            //                //    "other" : "in {0} hours"
            //                //],
            //                //"current" : "this hour"
            //                fatalError()
            //            }
            //
            //            //"week" : [
            //            //    "previous" : "last week",
            //            //    "current" : "this week",
            //            //    "future" : [
            //            //        "one" : "in {0} week",
            //            //        "other" : "in {0} weeks"
            //            //    ],
            //            //    "next" : "next week",
            //            //    "past" : [
            //            //        "one" : "{0} week ago",
            //            //        "other" : "{0} weeks ago"
            //            //    ]
            //            //],
            //            func week() -> [TimeTranslation] {
            //                //"previous" : "last week",
            //                //"current" : "this week",
            //                //"future" : [
            //                //    "one" : "in {0} week",
            //                //    "other" : "in {0} weeks"
            //                //],
            //                //"next" : "next week",
            //                //"past" : [
            //                //    "one" : "{0} week ago",
            //                //    "other" : "{0} weeks ago"
            //                //]
            //                fatalError()
            //            }
            //
            //            //"minute" : [
            //            //    "current" : "this minute",
            //            //    "past" : [
            //            //        "one" : "{0} minute ago",
            //            //        "other" : "{0} minutes ago"
            //            //    ],
            //            //    "future" : [
            //            //        "one" : "in {0} minute",
            //            //        "other" : "in {0} minutes"
            //            //    ]
            //            //],
            //            func minute() -> [TimeTranslation] {
            //                //"current" : "this minute",
            //                //"past" : [
            //                //    "one" : "{0} minute ago",
            //                //    "other" : "{0} minutes ago"
            //                //],
            //                //"future" : [
            //                //    "one" : "in {0} minute",
            //                //    "other" : "in {0} minutes"
            //                //]
            //                fatalError()
            //            }
            //
            //            //"year" : [
            //            //    "next" : "next year",
            //            //    "future" : [
            //            //        "one" : "in {0} year",
            //            //        "other" : "in {0} years"
            //            //    ],
            //            //    "past" : [
            //            //        "other" : "{0} years ago",
            //            //        "one" : "{0} year ago"
            //            //    ],
            //            //    "current" : "this year",
            //            //    "previous" : "last year"
            //            //],
            //            func year() -> [TimeTranslation] {
            //                //"next" : "next year",
            //                //"future" : [
            //                //    "one" : "in {0} year",
            //                //    "other" : "in {0} years"
            //                //],
            //                //"past" : [
            //                //    "other" : "{0} years ago",
            //                //    "one" : "{0} year ago"
            //                //],
            //                //"current" : "this year",
            //                //"previous" : "last year"
            //                fatalError()
            //            }
            //
            //            //"second" : [
            //            //    "current" : "now",
            //            //    "past" : [
            //            //        "other" : "{0} seconds ago",
            //            //        "one" : "{0} second ago"
            //            //    ],
            //            //    "future" : [
            //            //        "one" : "in {0} second",
            //            //        "other" : "in {0} seconds"
            //            //    ]
            //            //],
            //            func second() -> [TimeTranslation] {
            //                //"current" : "now",
            //                //  "past" : [
            //                //      "other" : "{0} seconds ago",
            //                //      "one" : "{0} second ago"
            //                //  ],
            //                //  "future" : [
            //                //      "one" : "in {0} second",
            //                //      "other" : "in {0} seconds"
            //                //  ]
            //                fatalError()
            //            }
            //
            //            //"day" : [
            //            //    "next" : "tomorrow",
            //            //    "past" : [
            //            //        "other" : "{0} days ago",
            //            //        "one" : "{0} day ago"
            //            //    ],
            //            //    "future" : [
            //            //        "other" : "in {0} days",
            //            //        "one" : "in {0} day"
            //            //    ],
            //            //    "previous" : "yesterday",
            //            //    "current" : "today"
            //            //]
            //            func day() -> [TimeTranslation] {
            //                return [
            //                    .next(["tomorrow"]),
            //                    .past(["{0} days ago", "{0} day ago"]),
            //                    .future(["in {0} days", "in {0} day"]),
            //                    .previous(["yesterday"]),
            //                    .current(["today"]),
            //                ]
            //            }
            //            return [TimeTranslation](now: "now", second: second(), minute: minute(), hour: hour(), halfHour: nil, day: day(), week: week(), month: month(), year: year(), quarter: quarter(), other: nil)
        }
        var dict = TimeTranslRuleSet()
        dict[.long] = long()
        dict[.short] = short()
        dict[.narrow] = narrow()
        return dict
    }
}
