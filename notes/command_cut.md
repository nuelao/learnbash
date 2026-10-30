cut -d " " -f 4- [where "n" = 4 = any number] 

Extracts everything from the 4th field to the end of a line, using a space as the separator.

### Breakdown

- cut → extract fields from text
- -d " " → use a space as the delimiter
- -f 4- → print fields 4 through to the end

### Example

Input:
Command:

cut -d " " -f 4-
Output:

db timeout
Log Analysis Use

grep ERROR mini.log | cut -d " " -f 4-
Removes:
	• Date
	• Time
	• Log level
Keeps only the error message:

db timeout
disk full
Key Takeaway

cut -d " " -f 4-

= Split by spaces and keep everything from column 4 onward.
