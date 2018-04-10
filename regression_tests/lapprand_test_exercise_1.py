from regression_tests import *
from utils import constants, multicall
from fuzzer.validator import validate

def test_date():
    path_name = os.path.join(constants.seeds_dir, 'exercise_1/spidermonkey_1395844.js')
    res = multicall.callAll(path_name)
    print('\n', res)