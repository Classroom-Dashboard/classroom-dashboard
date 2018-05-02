
# Students Participating At Mudd (S.P.A.M.)

While Harvey Mudd CS professors often use technology to present their lecture content, in-class interactions (such as randomly calling students) remain offline and inefficient.

S.P.A.M. is a tool that facilitates student engagement during large lectures by implementing random cold-calling for in-class questions. Outside of class, professors use S.P.A.M. to make notes of student information and test their knowledge of student names.

## Architecture

### Prerequisites

#### Rails

Classroom Dashboard requires Ruby version >= 2.4 and Rails version >= 5.1.

#### ImageMagick

Paperclip, a ruby gem utilized by Classrom Dashboard, must have access to ImageMagick. To install ImageMagick, go to the [Paperclip Documentation Page](https://github.com/thoughtbot/paperclip). Follow the steps within the [Requirements](https://github.com/thoughtbot/paperclip#requirements) section, under [Image Processor](https://github.com/thoughtbot/paperclip#image-processor). 

### Gems

TODO: List which gems you added to the project, and the purpose each gem serves in your app.

#### Paperclip
Paperclips allows for easy single file upload for student images.

#### SimpleForm

#### Bootstrap-sass


## Installation

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

#### Bootstrap Complications

When accessing this software through different mediums, such as a phone, tablet, minimized desktop browser, the layout and images will not scale to the smaller screen. 

#### Amount of Student Restrictions

On the Flashcards and Memory Game pages, the student's images are accessed through that image's URL (in the JS script within flashcards.html.erb and quiz.html.erb). Special cases had to be written for students with single-digit, two-digit, and three-digit ID's. Currently, this image accessing only handles these cases, and will break for the 1000th student created on the site, as there is no case for students with IDs greater than three digits. 

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D









