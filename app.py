#!/usr/bin/env python
""" Simple falcon rest api app."""
# pylint: disable=E0401
# pylint: disable=R0205
# pylint: disable=R0201
# pylint: disable=R0903
# pylint: disable=W0613

import random
import os
import time
import falcon

WAIT_TIME = int(os.environ.get('WAIT_TIME', '2'))

class RandomGenerator(object):
    """Simple random number generator."""

    def on_get(self, request, response):
        """on_get method"""
        time.sleep(WAIT_TIME)
        number = random.randint(0, 100)
        result = {'lowerLimit': 0, 'higherLimit': 100, 'number': number}
        response.media = result


API = falcon.API()
API.add_route('/number', RandomGenerator())
