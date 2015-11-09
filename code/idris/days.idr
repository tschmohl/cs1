data Days = monday | tuesday | wednesday | thursday | friday | saturday | sunday

nextDay: Days -> Days

nextDay monday = tuesday
nextDay tuesday = wednesday
nextDay wednesday = thursday
nextDay thursday = friday
nextDay friday = saturday
nextDay saturday = sunday
nextDay _ = monday

nextWeekday: Days -> Days

nextWeekday monday = tuesday
nextWeekday tuesday = wednesday
nextWeekday wednesday = thursday
nextWeekday thursday = friday
nextWeekday _ = monday
