#
# Beispiel Decision Tree
#
# quelle: http://www.w3ii.com/de/r/r_decision_tree.html
#


# install.packages("party")

# Wir werden dem R in-integrierte Datensatz readingSkills genannt einen Entscheidungsbaum zu erstellen. 
# Es beschreibt die Punktzahl von jemandes readingSkills wenn wir die Variablen "Alter", "shoesize", 
# "Score" und ob die Person ein Muttersprachler oder nicht wissen.

# Load the party package. It will automatically load other dependent packages.
library(party)
# Print some records from data set readingSkills.
print(head(readingSkills))  


# Load the party package. It will automatically load other dependent packages.
library(party)

# Create the input data frame.
input.dat <- readingSkills[c(1:105),]

# Give the chart file a name.
png(file = "decision_tree.png")

# Create the tree.
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score, 
  data = input.dat)

# Plot the tree.
plot(output.tree)

# Save the file.
dev.off()