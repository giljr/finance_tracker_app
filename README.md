
# Rails Bootstrap Template Project
### How to add Bootstrap to Ruby on Rails 7 App
- Rails 7 Tutorial 2022 
based on : David Battersby
tutorial: https://youtu.be/uiLAPHPdAis



> This is a boostrap template project for Rails 7 and Ruby 3:
```
Rails 7.0.4.3
Ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux]
```
Date: jun 2023


## Lessons Learned from Pompermaier

instructions on setting up Bootstrap in a Rails project. Please note that the steps might need to be adjusted for Rails 7 based on any changes in the framework. Here's a general guide for setting up Bootstrap in a Rails project:

#### 1 - Create a new Rails project: 
Open a terminal and navigate to the desired directory where you want to create your Rails project. Run the following command to create a new Rails project:


```
rails new your_project_name
```
Replace your_project_name with the desired name for your project.

#### 2 - Navigate to the project directory: 
Change to the project directory using the following command:
```
cd your_project_name
```

#### 3 - Add the Bootstrap gem:
Open the Gemfile in your project directory and add the following line:
```
gem 'bootstrap', '~> 5.1'
```
Save the file and exit.

#### 4 - Install the gem:
Run the following command to install the Bootstrap gem:
```
bundle install
```
#### 5 -Import Bootstrap stylesheets and JavaScript:
Open the app/assets/stylesheets/application.css file and add the following line at the top to import Bootstrap's stylesheets:
```
@import "bootstrap";
```
Save the file and exit.

Open the app/assets/javascripts/application.js file and add the following line at the bottom to require Bootstrap's JavaScript components:

```
//= require bootstrap
```
Save the file and exit.

#### 6 -Generate a layout file:
Run the following command to generate a layout file with Bootstrap integration:
```
rails generate layout:install bootstrap5
```
#### 7 - Start the Rails server:
Start the Rails server by running the following command:
```
rails server
```
That's it! You have now set up Bootstrap in your Rails project. You can now start creating views and using Bootstrap classes and components in your application.

Please note that if you are using a different version of Bootstrap or Rails, the steps and gem versions may vary. It's always recommended to refer to the official documentation of the specific gems and frameworks you are using for the most up-to-date instructions.
## License

[MIT](https://choosealicense.com/licenses/mit/)


## Authors

- [@j3](https://www.github.com/giljr)


## Contributing

- [@pomper](https://www.linkedin.com/in/pompis/)

