# Description #

This is a lightweight template for projects to simplify following good unit testing & style practices by providing Makefile commands and directory structure. Using PyLint from the very beginning of a project ensures that proper style is adhered to, and having the project ready for unit tests will make them easier to write. 

### Requirements ###

* Python 2.7
* Virtualenv
* Make
* Pylint
* Coverage

### Setting Up ###
Copy over the template to your project directory. Move your source code to to the src directory, and unittest tests to the test folder. In the root folder of the project do the following:
```
virtualenv env
pip install -r requirements.txt
. env/bin/activate
make status
```
The status command will run PyLint over code in the src folder and then (if no lint issues are found) execute all unittest files in the test folder.