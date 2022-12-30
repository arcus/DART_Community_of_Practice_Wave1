### Make linked, short form schedule

echo "# Community of Practice Schedule" > schedule.md

for FOLDER in Prompts/*
do
    echo >> schedule.md
    topic=`basename $FOLDER` 
    echo "## [${topic//_/ }]($FOLDER)" >> schedule.md ### prints the folder name without the whole path

    for SUBFOLDER in $FOLDER/*    
    do
        #echo $week
        subtopic=`basename $SUBFOLDER`
        echo "- [${subtopic//_/ }]($SUBFOLDER)" >> schedule.md
    done
    
    echo >> schedule.md

done
