
#############################
# First we create the .md file
#############################

for FOLDER in Prompts/*
do
  program_week=" `grep "program_week:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` "
  section=" `grep "section:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]' | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` "
  section_week=" `grep "section_week:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` "
  topic=" `grep "topic:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` "
  
  greeting='## **Welcome to Week '
  greeting+=$program_week
  greeting+=' of the DART Program!**'
  
  email_name=Weekly_Emails/Email_Week_
  email_name+=$program_week
  email_name+='.md'
  email_name="$(echo -e "${email_name}" | tr -d '[:space:]')"

  echo $greeting > $email_name
  echo  >> $email_name 

  echo "Please take a moment to look at this week's activities and set aside 2 or 3 hours in your week to work on the modules in your pathway and participate in your Community of Practice." >> $email_name
  
  echo  >> $email_name 

  week_name="This week is **"
  week_name+="$(echo -e "${section}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
  week_name+=" Part "
  week_name+="$(echo -e "${section_week}" | tr -d '[:space:]')"
  week_name+=": " 
  week_name+="$(echo -e "${topic}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
  week_name+="**." >> $email_name 

  echo $week_name  >> $email_name 

  echo >> $email_name

  activity_header="### Week "
  activity_header+="$(echo -e "${program_week}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
  activity_header+=" Community of Practice Activities:"

  echo $activity_header >> $email_name

  echo >> $email_name

  echo "`cat $FOLDER/activity.md ` " >> $email_name

  echo >> $email_name
  echo "`cat $FOLDER/social_warm_up.md`" >> $email_name
  echo >> $email_name
  echo "`cat $FOLDER/discussion_topic.md`" >> $email_name
  echo >> $email_name
  echo "`cat $FOLDER/extra.md`" >> $email_name
  echo >> $email_name

  echo "**When to post:**" >> $email_name
  echo >> $email_name 
  echo "While we are specifically asking you to post both your social warm-up and discussion, you can and should also post about other things!" >> $email_name
  echo >> $email_name
  echo "Any time you get stuck or unstuck, consider posting about it in your Community of Practice. Your peers can empathize with you, help you get unstuck, benefit from what you have already learned, and celebrate your accomplishments with you!" >> $email_name
  echo >> $email_name

  echo " `grep "signature:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` " >> $email_name
  echo >> $email_name
  echo "The DART Team" >> $email_name
  echo >> $email_name
  echo "https://dart-program.thinkific.com" >> $email_name
  

done
