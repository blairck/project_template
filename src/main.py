# -*- coding: utf-8 -*-
"""This is a template with unit tests for other projects"""
class Addition(object):
    """Example class and function"""
    def __init__(self, base):
        self.base = base

    def apply_addition(self, value):
        return self.base + value
            
if __name__ == '__main__':
    base = 5
    value = 3
    add_class = Addition(base)
    result = add_class.apply_addition(value)
    print "{0} + {1} = {2}".format(base, value, result)