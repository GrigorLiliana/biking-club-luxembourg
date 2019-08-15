

Clicking on an event item's read more button redirects to the event detail page.

An event consists of:

* A title
* A description, available in multiple languages
* A cover picture
* A picture gallery
* A date



### Section Details

Every section is at least the height of the viewport.

The upcoming and previous eventsections have a fixed background image (on desktop + mobile).

A maximum of 3 events are displayed per row for desktop > 1024px.

A maximum of 2 events are displayed per row for tablet <= 1024px.

One event is displayed on mobile.

The events should display a maximum of ~25 words and be followed by "..." to signal that there is more to read.



An event is considered upcoming when the date is greather or equal than the current date.

The upcoming event section displays the next 3 upcoming events, starting with the next recent.



The contact form is centered inside the section and has a max width. You have the freedom to adjust the form's min and max widths. It should look good on all screen sizes.



### Detail Page

For the detail page please go to https://www.codestart.lu/news/4 and recreate it. The page background  can be blank or choosen by yourself.

The retour button on the upper left redirects back to the homepage (preferably to the same section the user came from).

If no pictures were uploaded, center the informations on the page (should be the case on upcoming events).



### Breakpoints

* mobile: <= 768px
* tablet: <= 1024px
* desktop > 1024px

## CMS

You need to create a basic cms with the following features:

* Login (no user management needed, create a hardcoded user inside the database)
* Event management:
  * overview of events (upcoming/previous separated if possible)
  * creating a new event (with the attributes mentioned at the top)
  * The selected images for the gallery should have a preview
  * updating an event
  * deleting an event

The design of the cms is of your choice.

## Notes

* For the languages, use at least 2 different ones e.g english and german
  * The different translation input fields for the description of an event need to be inside the add/edit page of the event. You may use accordions or another technique to achive this.
* You need to use the assets provided
* For the gallery images, you may use placeholder images / random images
* The website has to be responsive
* Try to cover most popular browsers (IE/ Edge is a **could**)
* Document your code
* Use git versioning