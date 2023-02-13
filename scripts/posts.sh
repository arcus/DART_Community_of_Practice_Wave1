#############################
# Create posts for PeerBoard Community of Practice posts.
#############################
program_week=0
for FOLDER in Prompts/*/*
do
  ### Pull information from theme.md file as variables to reuse throughout the email.
  program_week=$((program_week+1))
  section=" `grep "section:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]' | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` "
  section_week=" `grep "section_week:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` "
  topic=" `grep "topic:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` "
  
  # Name the weekly emails in the Posts folder
  post_name=Posts/Post_Week_
  if [ $program_week -lt 10 ]
    then post_name+='0'
  fi
  post_name+=$program_week
  post_name+='.md'
  post_name="$(echo -e "${post_name}" | tr -d '[:space:]')"

  # Announce the week's activities
  activity_header="# **Week "
  activity_header+="$(echo -e "${program_week}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
  activity_header+=" Community of Practice Activities:**"

  echo $activity_header > $post_name
  echo "Please comment on this post with your response to the week's activities." >> $post_name

  echo >> $post_name
  # Use the activity.md file for the week's activity
  echo "### **Activity:** " >>$post_name
  echo "`cat $FOLDER/activity.md ` " >> $post_name

  echo >> $post_name
  # Use the social_warm_up.md file for the week's social warm-up
  echo "### **Social Warm-Up:** " >>$post_name
  echo "`cat $FOLDER/social_warm_up.md`" >> $post_name

  echo >> $post_name
  
  # Use the discussion_topic.md file for the week's discussion
  echo "### **Discussion Topic:** " >>$post_name
  echo "`cat $FOLDER/discussion_topic.md`" >> $post_name

  echo >> $post_name
  
  # Use the extra.md file for the week's extra thing, if one exists. The files extra.md have all been created, so we check if the file contains anything.
  if [ -s $FOLDER/extra.md ]
  then 
    echo "### $(head -n 1 $FOLDER/extra.md)"  >> $post_name
    echo "$(tail -n +2 $FOLDER/extra.md)" >> $post_name
  fi

  
done
