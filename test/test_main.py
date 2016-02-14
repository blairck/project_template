import unittest
from src import main

class TestTileLine(unittest.TestCase):
	def test_positive_value(self):
		base = 10
		value = 3
		add_class = main.Addition(base)
		result = add_class.apply_addition(value)
		self.assertEqual(result, 13)

	def test_negative_value(self):
		base = 10
		value = -3
		add_class = main.Addition(base)
		result = add_class.apply_addition(value)
		self.assertEqual(result, 7)