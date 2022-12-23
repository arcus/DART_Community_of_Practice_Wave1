## Make a markdown table of the entire syllabus pulling from the prompts of each week.

#############################
# First we create the .md file
#############################

COLUMNS="Week Topic Activity WarmUp Discussion Extra"

# Create a .md file with the column headings specified above

HEADINGS='|'
BREAK='|'
for COL in $COLUMNS
do
  HEADINGS+=" $COL |"
  BREAK+=" ---- |"
done

# Headings are not automated but rather hanve specified widths because otherwise some columns are way to narrow.
echo "| Week | <div style=\"width:120px\">Topic</div> | <div style=\"width:200px\">Activity</div> | <div style=\"width:200px\">Warm-Up</div> | <div style=\"width:400px\">Discussion Topic</div> | <div style=\"width:200px\">Extra</div> |" > syllabus.md
echo $BREAK >> syllabus.md


## TODO: markdown doesn't like lists inside of tables, covert to pure(er) HTML to make them render nicely?
for FOLDER in Prompts/*
do
  ROW='|'
  program_week=$(grep "program_week:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]')
  ROW+=$program_week
  ROW+='|'
  section=" `grep "section:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'` "
  ROW+=$section
  ROW+=' Part '
  section_week=" `grep "section_week:" $FOLDER/theme.md | sed "s/^[^ ]* //" | sed "s/^[ ]* //" | tr -dc '[:print:]'` "
  ROW+="$(echo -e "${section_week}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
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
