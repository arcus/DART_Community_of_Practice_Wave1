## Make a markdown table of the entire syllabus pulling from the prompts of each week.

#############################
# First we create the .md file
#############################

COLUMNS="Week Section Topic Activity WarmUp Discussion Extra"

# Create a .md file with the column headings specified above

HEADINGS=''
BREAK=''
for COL in $COLUMNS
do
  HEADINGS+=" $COL |"
  BREAK+=" -- |"
done

echo $HEADINGS > syllabus.md
echo $BREAK >> syllabus.md

for FOLDER in Prompts/*
do
  ROW='|'
  program_week=$(grep "program_week:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]')
  ROW+=$program_week
  ROW+='|'
  section=" `grep "section:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'` "
  ROW+=$section
  ROW+=' | Part '
  section_week=" `grep "section_week:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'` "
  ROW+=$section_week
  ROW+=': '
  topic=" `grep "topic:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'` "
  ROW+=$topic
  ROW+='|'
  
  ROW+=" `cat $FOLDER/activity.md ` "

  ROW+='|'

  ROW+=" `cat $FOLDER/social_warm_up.md`"

  ROW+='|'

  ROW+=" `cat $FOLDER/discussion_topic.md`"

  ROW+='|'

  ROW+=" `cat $FOLDER/extra.md`"


  echo $ROW >>syllabus.md

done
