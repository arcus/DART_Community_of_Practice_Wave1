
#############################
# Create automated emails for each week in markdown, using the activities stored in the week's folder.
#############################
program_week=0
for FOLDER in Prompts/*/*
do
  ### Pull information from theme.md file as variables to reuse throughout the email.
  program_week=$((program_week+1))
  section=" `grep "section:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]' | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` "
  section_week=" `grep "section_week:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` "
  topic=" `grep "topic:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` "
  
  # Name the weekly emails in the Weekly_Emails folder
  email_name=Weekly_Emails/Email_Week_
  if [ $program_week -lt 10 ]
    then email_name+='0'
  fi
  email_name+=$program_week
  email_name+='.md'
  email_name="$(echo -e "${email_name}" | tr -d '[:space:]')"
  
  # Opening greeting
  greeting='## **Welcome to Week '
  greeting+=$program_week
  greeting+=' of the DART Program!**'
  
  echo $greeting > $email_name
  echo  >> $email_name 

  # Opening paragraph
  echo "`cat Weekly_Emails/Email_Text/Set_Aside_2_Hours.md`" >> $email_name
  
  echo  >> $email_name 
  if [ $program_week -eq 1 ]
    then echo "`cat Weekly_Emails/Email_Text/Welcome_to_DART.md`" >> $email_name
    echo >> $email_name

  fi
  # Announce the week's topic/theme
  week_name="This week is **"
  week_name+="$(echo -e "${section}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
  week_name+=" Part "
  week_name+="$(echo -e "${section_week}" | tr -d '[:space:]')"
  week_name+=": " 
  week_name+="$(echo -e "${topic}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
  week_name+="**." >> $email_name 

  echo $week_name  >> $email_name 

  echo >> $email_name

  # Announce the week's activities
  activity_header="### **Week "
  activity_header+="$(echo -e "${program_week}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
  activity_header+=" Community of Practice Activities:**"

  echo $activity_header >> $email_name

  echo >> $email_name
  # Use the activity.md file for the week's activity
  echo "#### **Activity:** " >>$email_name
  echo "`cat $FOLDER/activity.md ` " >> $email_name

  echo >> $email_name
  # Use the social_warm_up.md file for the week's social warm-up
  echo "#### **Social Warm-Up:** " >>$email_name
  echo "`cat $FOLDER/social_warm_up.md`" >> $email_name

  echo >> $email_name
  
  # Use the discussion_topic.md file for the week's discussion
  echo "#### **Discussion Topic:** " >>$email_name
  echo "`cat $FOLDER/discussion_topic.md`" >> $email_name

  echo >> $email_name
  
  # Use the extra.md file for the week's extra thing, if one exists. The files extra.md have all been created, so we check if the file contains anything.
  if [ -s $FOLDER/extra.md ]
  then 
    echo "#### $(head -n 1 $FOLDER/extra.md)"  >> $email_name
    echo "$(tail -n +2 $FOLDER/extra.md)" >> $email_name
  fi

  echo >> $email_name

  # Paragraphs about when to post in Peer Board

  if [ $program_week -eq 01 ]
    then echo "`cat Weekly_Emails/Email_Text/Giving_Receiving_Support.md`" >> $email_name
    elif [ $program_week -eq 16 ]
      then echo "`cat Weekly_Emails/Email_Text/Adjourning.md`" >> $email_name
    else echo "`cat Weekly_Emails/Email_Text/When_to_Post.md`" >> $email_name
  fi
  #echo "`cat Weekly_Emails/Email_Text/When_to_Post.md`" >> $email_name
  
  echo >> $email_name

  # Add email signature (cute signoff pulled from the week's theme.md file)
  echo " `grep "signature:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'| sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'` " >> $email_name
  echo >> $email_name
  echo "The DART Team" >> $email_name
  echo >> $email_name
  echo "https://dart-program.thinkific.com" >> $email_name
  
done
