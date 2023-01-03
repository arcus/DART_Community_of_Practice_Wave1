week=1

for FOLDER in Prompts/*/*
do
    echo $week
    echo $FOLDER
    echo `basename $FOLDER`
    week=$(($week+1))
    #for SUBFOLDER in $FOLDER/*    
    #do
    #    echo $SUBFOLDER
    #done

done
