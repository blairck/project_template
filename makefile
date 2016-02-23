#Note you must have a Virtualenv ‘env’ (default) created before
#running these commands

ENVIRONMENT = env

lint:
	#Just Pylint with config
	$(ENVIRONMENT)/bin/pylint src/ -rn --rcfile=pylint_config.txt
	$(ENVIRONMENT)/bin/pylint test/ -rn --rcfile=pylint_config.txt

run:
	#Run tests and then main.py
	$(ENVIRONMENT)/bin/coverage run test/run_tests.py
	$(ENVIRONMENT)/bin/python src/main.py

status: lint tests 
	#Overall project status with lint and tests

tests:
	#Just run unit tests and display code coverage result
	$(ENVIRONMENT)/bin/coverage run test/run_tests.py
	$(ENVIRONMENT)/bin/coverage report