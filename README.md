# README

GEMS:
random_util

Set up two private git repositories (please use GitHub, as they allow you to create free private
repositories; this will prevent future applicants from copying your code).
When committing, we suggest that your first commit should only add the files from the
unmodified base install, to distinguish your code from the boilerplate. Also, please make sure all
your commits have meaningful and descriptive commit messages.

In addition to testing locally, please deploy your API code to Heroku (using the free tier) and
your SPA code to Netlify (also free) so we can review a live demo. When you’ve completed the
challenge, give the Prota code reviewers access to your repositories (share with Guthub
usernames: rbuterbaugh, valthon, wclittle, and gabecoyne) and email your recruiting contact
with your project’s live URL to let us know that your code is ready for review.
The expectation is that you should be able to implement all the core requirements within 2-4
hours of total software development time. Stretch goals are opportunities to demonstrate
additional skills. Please feel free to do any subset or skip them entirely -- they are optional. Ask
us questions early and often if you get stuck or don’t understand what to build; we very much
welcome dialog as you are working through this.

Core Requirements
● Upon first visit, Users should default to working on a new distinct list.
● A user’s list should have an ID (alphanumeric 12-character string) that uniquely identifies
it.
● The URL upon first visit should include (?list_id=) and the auto-generated list_id.
● If a user goes to “/” they should be redirected to “/?list_id=xxxxxxxxxx” (a new list)
● Users can return to a list by visiting a URL with their distinct list_id parameter
● Users should be able to add as many names as they would like in a list.
● Whitespace should be trimmed from both ends of the submitted names.
● Duplicate names (case-insensitive, per-list) should be prevented and result in
appropriate error messaging to the user.
● Use PostgreSQL for your database engine
● SPA is fully static and implemented using ReactJS

Stretch Goals (completely optional)
● Use Redux state management for the UI
● Clicking on a name crosses it out (and clicking again un-crosses it out). This crossed-out
state should persist across sessions and between users viewing the same list.
● Only allow names with letters and (at most) one space.
○ Good: ‘Sally Lou’, ’Stanley’, ‘JoeBob Pringles’
○ Bad: ‘C3P0’, ’Stan the Man’
● Real-time updates when multiple people are working on the same list
● Client-side sorting of names (Alphabetical, By Input Time, By Length)
● Allow the user to manually prioritize the list using drag-and-drop functionality