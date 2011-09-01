from distutils.core import setup
import os, sys, glob

def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()

setup(name="process",
      scripts=['process'],
      version='1.0.0',
      maintainer="Peter Bouda",
      maintainer_email="pbouda@cidles.eu",
      description="Process! Code Processing sketches.",
      long_description=read('process.longdesc'),
      data_files=[('share/applications',['process.desktop']),
                  ('share/icons/hicolor/64x64/apps', ['process.png']),
                  ('share/process/qml', glob.glob('qml/*.qml')),
                  ('share/process/qml', glob.glob('qml/*.js')),
                  ('share/process/qml', glob.glob('qml/*.html')), ],)
