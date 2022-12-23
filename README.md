# DART Community of Practice

This repository contains the email templates and community building prompts for the 16 week [DART Program](https://arcus.github.io/education_modules/).

The [syllabus](https://github.com/arcus/DART_Community_of_Practice/blob/main/syllabus.md) and [Weekly Emails](https://github.com/arcus/DART_Community_of_Practice/tree/main/Weekly_Emails) are built from the information inside the [Prompts Folder](https://github.com/arcus/DART_Community_of_Practice/tree/main/Prompts).

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

The weekly breakdown of the topics as as follows:

- **Introduction** - Week 1
- **Data Use Best Practices** - Weeks 2-4:
  - FAIR Data
  - Reproducibility
  - NIH Data Sharing Rules
- **Learning How to Learn Data Science** - Weeks 5-8:
  - Getting Help and Support
  - Getting Stuck
  - Getting Unstuck 
  - Processing the Emotional Side of Learning
- **Version Control** - Weeks 9-11:
  - The Problem of Version Control
  - Introduction to GitHub
  - Open Source Projects
- **Working with Data** - Weeks 12-14:
  - Locating Public Data
  - Exploring Data
  - Visualizing Data
- **Wrapping Up** - Weeks 15-16:
  - Reflecting on the DART Program
  - Beyond the DART Program
