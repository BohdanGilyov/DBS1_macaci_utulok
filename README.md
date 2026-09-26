The file `macaci_utulok.sql` is the database itself—or, more precisely, an export of the database created using MySQL Workbench -> Server -> Data Export -> Export to Self-Contained File.
The file `macaci_utulok_script.sql` is a merge of all the scripts used to create the database and populate it with tables. Creating the database itself and the `inventory` table was done by one person; creating the `cats` table was done by another; 
and so on for the remaining tables. Afterward, as the team lead, I merged all four separate scripts into one and pushed it to GitHub.
I found it more convenient to share the database among team members using the “import” and “export” functions in MySQL Workbench, following the instructions provided above.
Bohdan Gilyov
