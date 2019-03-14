import codecs
from setuptools import setup, find_packages

# Get the long description from the relevant file
with codecs.open('README.md', encoding='utf-8') as f:
  long_description = f.read()

__version__ = '1.0.0'

setup(name='myorg.common.sample',
      namespace_packages=['myorg', 'myorg.common'],
      version=__version__,
      python_requires='>3.6',
      description="Sample python application with Makefile and Docker file",
      long_description=long_description,
      classifiers=[],
      keywords='',
      author='Shelby Shum',
      author_email='sshum@myorg.com',
      url='https://github.com/sillyfatcat/python-skeleton',
      license='None',
      packages=find_packages(exclude=[]),
      include_package_data=True,
      zip_safe=False,
      install_requires=[
      ],
      entry_points={
        'console_scripts': ['sample=myorg.common.sample.run:main'],
      }
      )
