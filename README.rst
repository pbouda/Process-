Intro
=====
``Process!`` is a very simple programming environment that let you execute
Processing sketches (see http://processing.org/). It basically runs a Webkit
engine that loads ``processing.js`` (see http://processingjs.org/). Everything
that runs fine under ``processing.js`` will run fine in ``Process!``. The
application is based on ``PySide`` (see http://www.pyside.org/).

.. image:: http://www.dasskript.com/images/process.png

Btw: ``Process!`` runs fine on Nokia Maemo devices, aka N900, N950 and N9.

Usage
=====
When you start ``Process!`` a text edit field with some example Processing code
appear. You can start to edit the code instantly. Whenever you think the
code is done, just press the Button "Run" and the application will try to
execute your code.

To get back to the code editor just press and hold the left mouse button
within the Processing sketch. Or tap and hold on touchscreens.

You have to install PySide to start ``Process!``. Then just type::

  $ python process
  
Add the command line argument ``-f`` to start in fullscreen mode. The latter
only works well when OpenGL is supported on your system.



Examples
========
You may find several example files in the folder ``examples``. All of them are
standard Processing sketches that run fine in ``Process!``. Just use Copy and
Paste to transfer the code into the ``Process!`` code editor.