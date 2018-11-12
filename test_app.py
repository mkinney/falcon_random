#!/usr/bin/env python
""" Simple test to verify that app.py works as expected."""

import requests

def test_generate_random():
    """ See if we can hit the endpoint and get the expected response."""
    response = requests.get("http://localhost:8000/number")
    assert response.status_code == 200
    #assert response.text.rstrip() == "Hey, we have Flask in a Docker container!"
