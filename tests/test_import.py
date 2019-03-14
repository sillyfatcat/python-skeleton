import unittest


class TestImport(unittest.TestCase):
  def test_import(self):
    """
    General import test to make sure all the critical dependencies are working fine
    :return:
    """
    try:
      from myorg.common.sample.run import main
    except:
      self.fail('Failed import')


if __name__ == '__main__':
  unittest.main()
