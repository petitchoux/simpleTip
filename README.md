# Pre-work - Simple Tip

Simple Tip is a tip calculator application for iOS.

Submitted by: Joyce Huang

Time spent: 5 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [ ] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- Tip slider that allows the user to choose their own custom tip percent from 10% - 30%
- Split slider for multiple guests

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

![Video Walkthough](https://imgur.com/a/pJVGjP7)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

When I used the slider values to calculate the tip and total, I realized that it was taking decimal values despite displaying only integer values. This was a problem because you cannot split an amount between 2.5 people and it is unreasonable to calculate a tip by a decimal percentage such as 15.75%. Therefore, I had to round my values.

Another problem I faced was having my app crash when implementing and declaring new variables for the tip and split slider. I had to fix my references. 

Also concerning the layout, I am not sure why the alignment differs from the storyboard and the stimulator. 

I would be interested in further learning how to add a dark theme option in the settings. 

## License

Copyright 2018 Joyce Huang

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
