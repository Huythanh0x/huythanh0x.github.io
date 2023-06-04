# Get the current date
date=$(date +"%Y-%m-%d")
# Generate the dynamic title
title="Diary $date"

# Create the text content
text="---
title: $title
categories: [Diary]
tags: []
---
>\"\"
>
> ―
 
**A rest day**
- 
- 
- 
Sum up: 📚💻📝📈 and 😴📱"

# Create the filename
filename="${date}-diary.md"

# Write the text content to the file
echo "$text" > "_posts/$filename"

echo "Diary file created: $filename"