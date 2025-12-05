x <- 10
print('Hello World',x)

10/3 # Returns Quotient
10%%3 # Returns Remainder
10%/%3 # Return Integer Quotient (Rounding off)

# Relational Operation
10>3 # Returns Boolean
10!=3 

TRUE || TRUE # AND OPEARTOR ABBREVIATION ||

TRUE | TRUE # OR OPERATOR ABBREVIATION |

c(189191991,0) & c(40,0) # Non Zero Numbers are true 
40 && 0 # sibgle & Compares a single number

v <- c(10,20,30,40) #Use c for vector creation
v[c(1,2,3)] # Unlike Python, in R index starts from 1.

# Unlike Python R does not support reverse(negative indexing)
v[-1] # This creates a view without first element, does not delete.
# Here -1 represents to delete an element, not reverse indexing

v[-c(1,2,3)] # Use -c for creating a view without elements
v[v>20] # Returns the elements > 20

v[1:3] # Return elements from v with index from 1 to 3. 3 is included
v[-c(1:3)] # Returns a view with 1 to 3 elements deleted. Here () are used