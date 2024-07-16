#!/bin/bash

# Directory containing the .itf files
DIRECTORY="itf-2023-10"

# Loop over each .itf file in the directory
for file in "$DIRECTORY"/temp/*.itf; do
    # Check if there are no .itf files in the directory
    if [ ! -e "$file" ]; then
        echo "No .itf files found in the directory."
        exit 1
    fi

    # Extract the base name of the file (without directory and extension)
    base_name=$(basename "$file" .itf)
    
    # Run the java command
    java -jar /Users/stefan/apps/ili2pg-5.1.0/ili2pg-5.1.0.jar --dbhost localhost --dbport 54321 --dbdatabase edit --dbusr postgres --dbpwd secret --dbschema av_dm01 --strokeArcs --nameByTopic --disableValidation --defaultSrsCode 2056 --models DM01AVSO24LV95 --import "$file"

    # Print a message indicating the file has been processed
    echo "Processed $file"
done

