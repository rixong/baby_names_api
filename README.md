# README

● Upon first visit, Users should default to working on a new distinct list.

MODELS:
LIST(unique_ID INT - Method in NAME model) 
list has many names
NAME(name STR, fk List_Id INT)

● A user’s list should have an ID (alphanumeric 12-character string) that uniquely identifies
it.

UUID? 

● If a user goes to “/” they should be redirected to “/?list_id=xxxxxxxxxx” (a new list)
GET ROUTE

● Users can return to a list by visiting a URL with their distinct list_id parameter


● Users should be able to add as many names as they would like in a list.
POST (CREATE) ROUTE redirects back to /


● Whitespace should be trimmed from both ends of the submitted names.
Method in NAME model

● Duplicate names (case-insensitive, per-list) should be prevented and result in
appropriate error messaging to the user.
Method in NAME model

● Use PostgreSQL for your database engine

● SPA is fully static and implemented using ReactJS
