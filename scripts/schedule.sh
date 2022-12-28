### Make mini-schedule

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


### Make full schedule with all activities?

echo "<h> Detailed Community of Practice Schedule </h>
    <br>
    <br>" > full_schedule.html
week=1

echo "<table> <tbody>" >> full_schedule.html
echo "    <tr>
      <th>Topic</th>
      <th>Activity</th>
      <th>Social Warm-Up</th>
      <th>Discussion</th>
      <th>Extra</th>
    </tr>" >> full_schedule.html

for FOLDER in Prompts/*
do
    echo >> schedule.md
    topic=`basename $FOLDER` 
    echo "<tr><td> $topic </td></tr>" >> full_schedule.html ### prints the folder name without the whole path
    
    for SUBFOLDER in $FOLDER/*    
    do
        #echo $week
        subtopic=`basename $SUBFOLDER`
        echo "- [${subtopic//_/ }]($SUBFOLDER)" >> full_schedule.html
        #echo `cat $SUBFOLDER/activity.md`
        week=$(($week+1))
    done
    
    echo >> full_schedule.html

done

echo "</tbody>" >> full_schedule.html
echo "</table>" >> full_schedule.html
