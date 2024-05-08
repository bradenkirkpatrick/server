import pytest
import source.server as server

def test_home():
    assert server.home() == 'home.html'