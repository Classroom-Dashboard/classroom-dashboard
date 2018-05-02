
# Classroom Dashboard

Classroom Dashboard is a tool to facilitate student engagement during class and lecture. A student and a professor use the tool in different ways to foster participation, familiarity between student-professor relationships, and help build student-student relationships as well. 

This tool takes advantage of the technology that is often brought into lectures: smart phones and laptops. The functionality includes features such as equity cards to promote student participation and quizzes to promote engagement and attendance. Classroom Dashboard bridges the gap between the surrounding abundance of technology and the manner in which the course material is absorbed by organizing these interactions.

## Architecture

### Prerequisites

TODO: List what a user needs to have installed before running the installation instructions below (e.g., git, which versions of Ruby/Rails)

#### Rails

Classroom Dashboard requires Ruby version >= 2.4 and Rails version >= 5.1.

#### ImageMagick

Paperclip, a ruby gem utilized by Classrom Dashboard, must have access to ImageMagick. To install ImageMagick, go to the [Paperclip Documentation Page](https://github.com/thoughtbot/paperclip). Follow the steps within the [Requirements](https://github.com/thoughtbot/paperclip#requirements) section, under [Image] Processor(https://github.com/thoughtbot/paperclip#image-processor). 

### Gems

TODO: List which gems you added to the project, and the purpose each gem serves in your app.

#### Paperclip
Paperclips allows for easy single file upload for student images.

#### SimpleForm

#### Bootstrap-sass


## Installation

TODO: Describe the installation process (making sure you mention `bundle install`).
Instructions need to be such that a user can just copy/paste the commands to get things set up and running.

Under **Clone or Download**, copy the repository URL. 
Open up the terminal and change the current working directory to the location where you want the cloned directory to be made.
run:
```
$ git clone https://github.com/Classroom-Dashboard/classroom-dashboard.git
```

On the command line, run:
```
bundle install
```

## Functionality

TODO: Write usage instructions. Structuring it as a walkthrough can help structure this section,
and showcase your features.

#### Sign Up

Create an account by inputting an email and creating a password with 6 or more characters.

#### Login

Access personal homepage by inputting email and password.

#### Add Section

Add a new section with name (ex: 'CS5') and semester (ex: 'S2018') parameters. 

#### Student List

Display all students within a class, each as a link to a personal student page containing all information. 

##### Add Student

Add a new student with image, name, pronoun, school, and other parameters. To parse student name from image file, format as "firstname_lastname.jpg" (or png, JPEG, etc). If student is given no image, a default image will be given to the student. 

##### Update / Delete Student

From the Student List page, click on the pencil to the right of a student's name to update or delete. 

#### Flashcards

Selects a random student for cold-calling purposes, displaying that student's image and name. This page does not create a link to a student's personal page, as this page is intended to be projected in front of the class. The right-arrow key displays the next student. No student will be selected twice until all students have been displayed. 

#### Memory Game

Selects a random student and displays that student's image. The student's name is revealed after a spacebar press.The right arrow key displays a new student. No student will be selected twice until all students have been displayed. 

## Known Problems

TODO: Describe any known issues, bugs, odd behaviors or code smells. 
Provide steps to reproduce the problem / name a file or a function where the problem lives.

#### Bootstrap Complications

When accessing this software through different mediums, such as a phone, tablet, minimized desktop browser, the layout and images will not scale to the smaller screen. 

#### Amount of Student Restrictions

On the Flashcards and Memory Game pages, the student's images are accessed through that image's URL (in the JS script within flashcards.html.erb and quiz.html.erb). Special cases had to be written for students with single-digit, two-digit, and three-digit ID's. Currently, this image accessing will break for the 1000th student created on the site, as there is no case for students with IDs greater than three digits. 

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D









