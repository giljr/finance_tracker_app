# Rails Finance Tracker App - Tutorial from 
>### How to Create a Finance Tracker on Ruby on Rails 7
>#### [The Complete Ruby on Rails Developer Course](https://www.udemy.com/course/the-complete-ruby-on-rails-developer-course/?kw=rails&src=sac)
>##### Learn to make innovative web apps with Ruby on Rails and unleash your creativity
>###### Instructors: Mashrur Hossain & Rob Percival



This is Project uses:
```
Rails 7.0.4.3
Ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux]
```
Date: jun 2023


## Deployment

To deploy this project on vscode please folow this checklist:

### Check list:
0. [ ]  I am using `Ubuntu 22.04.2 LTS`  
1. [ ]  Go to `vscode` > `Source Control` (ctrl+Shift+G);     
2. [ ]  Press 🔘️ `Clone Git Repository to a Local Folder`; use:
        https://github.com/giljr/finance_tracker_app.git
3. [ ]  Choose a folder; mine is: `Documents/ruby/rails/`
4. [ ]  Press 🔘️ `Select as Repository Destination` and `open the cloned repo`;
5. [ ]  Install & Open `DBeaver` (https://dbeaver.io/);
6. [ ]  Go To Menu: `Database` > `New Database Connection` > `SQLite JDBC driver` > `next` > 🔘️ `Open`;
7. [ ]  Point to: `Documents/ruby/rails/<app_name>/db/development.sqlite3`
8. [ ]  Select 🔘️  `Finish`;
9. [ ]  Select `USER` table view and confirm if `user.id = 1` was created;
10. [ ]  Exit from `DBeaver`;
11. [ ]  Go to models /`user.rb `file and please uncommet this code: 👉️ `has_secure_password`;
12. [ ]  On Terminal, run:
```
 rails db:migrate
 rails console
    user = User.create(username:"j3", email:"j3@gmail.com")
    user.save
    exit
  rails server
```
13. [ ]  Now browse to `localhost:3000` and 😍️ You Are Good To Go! 😍️;

## License

[MIT](https://choosealicense.com/licenses/mit/)


## Editor

- [@j3](https://www.linkedin.com/in/giljrx/)


## Contributing

- [@jeovan](https://www.linkedin.com/in/jeovan-farias-6283b8145/)
- [@moschini](https://www.linkedin.com/in/luiz-felipe-batista-moschini-4938a0211/)
- [@pomper](https://www.linkedin.com/in/pompis/)

