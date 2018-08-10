Editing the bibliography for the cleanest way:

*checkout latest version of lib from repository
*edit and commit

* download Jabref (3.6 and higher) as a convienent tool for editing


Cleaning the database
* Under "Quality", choose "Check integrity". This will generate a report.
* For each item in the report, find the item (using the search field)
* Address the problems
  * For paper titles, ensure that "sentence case" is used (bibstyle will do the capitalization). Right-click in the field, choose "Change case" etc.
  * For invalid characters (typically in the abstract), select the Abstract tab and delete any characters that look funny. Potentially re-download the abstract from the original website (the problem arises when parsing PDFs)
  * Page numbers should have "--" (double-dashes)
*naming convention for tags: [author1]:[titleword]:[journal_abbrevation]:[year]
*naming convention for pdf: same but with "_" instead of ":"


No longer using mysql but if desired
* Connect to the database
  * Database type: mysql
  * Host: mysql.vilhuber.com
  * Database: jabref3
  * User: jabref
  * Password: sloandp2016
* This might take a while. Afterwards you can edit the database directly. Edits are committed once you leave the field.
* Once you are done for the day, "Save as" the database, re-saving as library.bib, and committing to repository.
