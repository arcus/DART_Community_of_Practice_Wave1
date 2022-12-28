### Make mini-schedule

echo "# Community of Practice Schedule" > schedule.md
week=1

for FOLDER in Prompts/*
do
    echo >> schedule.md
    topic=`basename $FOLDER` 
    echo "## [${topic//_/ }]($FOLDER)" >> schedule.md ### prints the folder name without the whole path
    echo "## [${topic//_/ }]($FOLDER)"

    for SUBFOLDER in $FOLDER/*    
    do
        #echo $week
        subtopic=`basename $SUBFOLDER`
        echo "- [${subtopic//_/ }]($SUBFOLDER)" >> schedule.md
        week=$(($week+1))
    done
    
    echo >> schedule.md

done
