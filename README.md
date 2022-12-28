# DART Community of Practice

This repository contains the email templates and community building prompts for the 16 week [DART Program](https://arcus.github.io/education_modules/).

The [syllabus](https://github.com/arcus/DART_Community_of_Practice/blob/main/syllabus.md) and [Weekly Emails](https://github.com/arcus/DART_Community_of_Practice/tree/main/Weekly_Emails) are built from the information inside the [Prompts Folder](https://github.com/arcus/DART_Community_of_Practice/tree/main/Prompts).


Before using the emails, make sure to update the links (emphasized with 🔴) in the following places and then re-run the `emails.sh` script:

* [ ] Link to Orientation Recording in [`Weekly_Emails/Email_Text/Welcome_to_DART.md`](
https://github.com/arcus/DART_Community_of_Practice/blob/main/Weekly_Emails/Email_Text/Welcome_to_DART.md)
* [ ] Meeting times and link for Thinkific Tech Support in [`Weekly_Emails/Email_Text/Welcome_to_DART.md`](https://github.com/arcus/DART_Community_of_Practice/blob/main/Weekly_Emails/Email_Text/Welcome_to_DART.md)
* [ ] Mid-program survey in [`Prompts/3_Learning_to_Learn/4_Processing_Learning/activity.md`](https://github.com/arcus/DART_Community_of_Practice/blob/main/Prompts/3_Learning_to_Learn/4_Processing_Learning/activity.md)
* [ ] Post-intervention survey in [`Prompts/6_Wrapping_Up/1_Reflecting_on_DART/activity.md`](https://github.com/arcus/DART_Community_of_Practice/blob/main/Prompts/6_Wrapping_Up/1_Reflecting_on_DART/activity.md)
* [ ] Post-intervention survey in [`Prompts/6_Wrapping_Up/2_Beyond_DART/activity.md`](https://github.com/arcus/DART_Community_of_Practice/blob/main/Prompts/6_Wrapping_Up/2_Beyond_DART/activity.md)


## Prompts

Any update to the order or contents of the community of practice prompts should be made in the file containing it in that week's folder under Prompts.

Each week has 5 markdown files describing it:

- `activities.md`
- `discussion_topic.md`
- `extra.md` this file may contain an opportunity to explore further or plan the community, or may be left empty
- `social_warm_up.md`
- `theme.md` which contains the week's data:
```
program_week:
section: 
section_week: 
topic: 
signature: 
```
Some weeks (6 and 7) have an additional file which will be attached to the email as part of the week's activities.

## Weekly Emails

This folder contains weekly emails for Communites of Practice. These emails are generated from the weekly prompts and **should not be edited directly**.

The language in the prompts can be updated in their respective markdown files, and the other text of the emails can be changed in the subfolder [Email_Text](https://github.com/arcus/DART_Community_of_Practice/tree/main/Weekly_Emails/Email_Text).

## Scripts

The scripts which generate the syllabus and the weekly emails are contained here.

- `syllabus.sh` creates file `syllabus.md` which contains all of the weekly themes and activities as a table.
- `emails.sh` creates the weekly emails

Both of these scripts should be run from the main `DART_Community_of_Practice` directory.

## Structure of the Community of Practice Activities

See a summary of the topics and subtopics in [`schedule.md`](schedule.md).