### Make mini-schedule

echo "Community of Practice Schedule" > schedule.md
week=1

for FOLDER in Prompts/*
do
    echo >> schedule.md
    
    echo "[`basename $FOLDER`]($FOLDER)" >> schedule.md ### prints the folder name without the whole path
    

    for SUBFOLDER in $FOLDER/*    
    do
        #echo $week
        subtopic=`basename $SUBFOLDER` >> schedule.md
        echo "- [$subtopic]($SUBFOLDER)" >> schedule.md
        week=$(($week+1))
    done
    
    echo >> schedule.md
    
done
