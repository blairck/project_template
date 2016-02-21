lint:
	#Just Pylint with config
	env/bin/pylint src/ -rn --rcfile=pylint_config.txt
	env/bin/pylint test/ -rn --rcfile=pylint_config.txt

run:
	#Run tests and then main.py
	env/bin/coverage run test/run_tests.py
	env/bin/python src/main.py

status: lint tests 
	#Overall project status with lint and tests

tests:
	#Just run unit tests
	env/bin/coverage run test/run_tests.py
	env/bin/coverage report