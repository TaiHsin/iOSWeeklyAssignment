/*
 -------------------
 Others
 -------------------
 */

/*
 =======================
 -----Git Terminal------
 =======================
 */

/*
 
 You should learn how to establish a local repository use terminal.
 
 (1) 'git init' to create a local repo.
 
 (2) Create a repo on the Github through Github website.
 
 (3) 'git remote add ${remote-name} &{remote repo url}' to connect the github repo and local repo
 
 (4) 'git add' and 'git commit' will help you establish your git history.
 
 (5) 'git push' update the local data to remote repo.
 
 If you are not familiar with these sequencies, terminal and git commands, you should watch the Udacity `Github` session videos or any tutorials on the internet again and again until you know every details to them. Or you will be very suffer in this class. I am serious.
 */



/*
 =======================
 ---------Xcode---------
 =======================
 */


// Please describe how to establish a github repo and how to upload the local projects to github. Try to explain it as detail as possible.

/*
 
 // Git install and setup
 1. Download Git from Git website and install Git.
 
 Git download: https://git-scm.com
 
 2. Open terminal App. and type below commend to check if Git installed successfully.
 
 $ git --version
 git version 2.18.0.
 
 3. Input Git username and user email
 
 $ git config --global user.name "TaiHsin"
 $ git config --global user.email "peterlee0466@gmail.com"
 
 4. Use commend "git config --list" to check input user name and email.
 
 $ git config --list
 user.name=TaiHsin
 user.email=peterlee0466@gmail.com
 
 // Github repository
 
 Note. There are 2 ways to create repository, to directly create on Gihub website or create in Xcode while uploading local project to Github.
 
 5. Create and sign in  Github account
 Github: https://github.com
 
 6. Click "New repository" bottum in the Repositories block on homepage of Github
 
 7. Fill up repository name and description then create repository, repository create finish.
 
 // Upload the local projects to github (in Xcode)
 
 8. Open terminal App. and switch to playground directory (filename.playground actually is a diractory)
 
 cd ~/desktop/iOS_Assignment/week1.playground
 
 9. Input commend Git init to initialize Git repository in diractory
 
 $ git init
 Initialized empty Git repository in /Users/thlee/Desktop/iOS_Assignment/week1.playground/.git/
 
 10. Open playground file in Xcode and commit/ save modified week1.playground file.
 
 Xcode toolbar (top on the screen): Source Control > Commit
 
 11. Remember to click all items in the Navigator on the left and commit
 
 12. At the right side of Source Control navigator tab, right click week1.playground then choose create "week1.playground" Remote on GitHub
 
 12* For repo already create on Github website, choose "Add Existing Remote..." and fill out Remote name and location.
 
 Remote name: Github
 Location: repository link on Github wedsite
 
 13. At pomp out window, modify Repository name if you want (default = week1.playground) and add description then click create buttom
 
 14. Local project upload to Github repository done, check if file commit sucessfully on Github.
 
 * Modify and commit new version: Source Control > Click "push to remote" at left-buttom corner > Commit files.
 
 */



