# Interview Exercise

## Build This

![Military Personnel](assets/interview_exercise.png)

- You should have a UI that display more than one soldier.
- The elements that should be visible:
  - Image of Soldier,
  - Name,
  - Rank,
  - Rank by date (with date granularity to be decided by developer being visible).
- Provide an input per solider to allow us to promote solider to new rank and provide real time feedback to the UI.

==================================================================

### While we will be evaluating "everything", commentary can *replace actual development*

- Code:  platform selection, design, methodology, flexibility, extensibility, technology, testing
- Security
- Accessibility, usability
- Visuals
- Documentation

---

## Documentation

### Platform selection

-Amazon Web Services (AWS)

- CloudFormation Template Creates a LAMP stack on a single Amazon EC2 instance with a local MySQL database for storage.
  - Selected for ease of launching stack, setting parameters and being able to access infrastructure in minutes of launch
  - Set up MySQL Database from AWS Console (ie user, password, DB name, etc.)
  - [AWS File](https://s3.amazonaws.com/cloudformation-templates-us-east-1/LAMP_Single_Instance.template) or [Local Template File](LAMP_Single_Instance.template)
  
### Flexibility, Extensibility, Technology

- [AWS CLoudFormation Application Framework template](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/sample-templates-appframeworks-us-east-1.html) also available for increased scalability.

>Creates a LAMP stack on Amazon EC2 instances in an Auto Scaling group with a multi-AZ Amazon RDS database instance for storage.

- Templates can be created to meet individual uses-cases as well.

### Design

- MySQL

  - [Table Creation](tableCreation.sql) file

- Webpage - HTML, PHP
