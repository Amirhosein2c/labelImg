LabelImg
========

Forked from the main repo.
--------------------------

LabelImg is a graphical image annotation tool.

It is written in Python and uses Qt for its graphical interface.

Annotations are saved as XML files in PASCAL VOC format. 

.. image:: https://raw.githubusercontent.com/tzutalin/labelImg/master/demo/Demo_M.png
     :alt: Demo Image


Demo Usage
------------------

`Watch a demo video here <https://youtu.be/p0nR2YsCY_U>`__


Installation
------------------

Ubuntu Linux
^^^^^^^^^^^^

Python 3 + Qt5 (Recommended)

.. code:: shell

    sudo apt-get install pyqt5-dev-tools
    sudo pip3 install -r requirements/requirements-linux-python3.txt
    make qt5py3
    python3 labelImg.py
    
macOS
^^^^^

Python 3 + Qt5 (Recommended)

.. code:: shell

    brew install qt  # Install qt-5.x.x by Homebrew
    brew install libxml2

    or using pip

    pip3 install pyqt5 lxml # Install qt and lxml by pip

    make qt5py3
    python3 labelImg.py

Python 3 Virtualenv (Recommended)

Virtualenv can avoid a lot of the QT / Python version issues

.. code:: shell

    brew install python3
    pip3 install pipenv
    pipenv run pip install pyqt5==5.13.2 lxml
    pipenv run make qt5py3
    python3 labelImg.py
    [Optional] rm -rf build dist; python setup.py py2app -A;mv "dist/labelImg.app" /Applications

Note: The Last command gives you a nice .app file with a new SVG Icon in your /Applications folder. You can consider using the script: build-tools/build-for-macos.sh


Windows
^^^^^^^

Install `Python <https://www.python.org/downloads/windows/>`__,
`PyQt5 <https://www.riverbankcomputing.com/software/pyqt/download5>`__
and `install lxml <http://lxml.de/installation.html>`__.

Open cmd and go to the `labelImg <#labelimg>`__ directory

.. code:: shell

    pyrcc4 -o line/resources.py resources.qrc
    For pyqt5, pyrcc5 -o libs/resources.py resources.qrc
    
    python labelImg.py


Get from PyPI but only python3.0 or above
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. code:: shell

    pip3 install labelImg
    labelImg
    
Usage
-----

Steps:
~~~~~~~~~~~~~~~~~
0. Clone the current repository. (due to the modifications, you need to re-install the labelImage)
1. Build and launch using the instructions above.
2. Click 'Change Save Dir' from the left menu bar, and point to the downloaded XML files' folder.
3. Click 'Open Dir' from the left menu to point to the folder containing downloaded images
4. If everything goes right, you should see an image with the bounding boxes already painted on it.
5. The goal is to correct the mislocated or misdetected bounding boxes.

- Please refer to the below hotkeys to ease and speed up your workflow.


Hotkeys
~~~~~~~


+------------+--------------------------------------------+
| c          | Create a new bounting box                  |
+------------+--------------------------------------------+
| w          | Copy / Duplicate the current bounding box  |
+------------+--------------------------------------------+
| Q / Del    | Delete the selected bounding box           |
+------------+--------------------------------------------+
| E          | Edit / Change label of the selected box    |
+------------+--------------------------------------------+
| d          | Forward to the Next image                  |
+------------+--------------------------------------------+
| a          | Backward to the Previous image             |
+------------+--------------------------------------------+



License
~~~~~~~
`Free software: MIT license <https://github.com/tzutalin/labelImg/blob/master/LICENSE>`_

Citation: Tzutalin. LabelImg. Git code (2015). https://github.com/tzutalin/labelImg

Related
~~~~~~~

1. `ImageNet Utils <https://github.com/tzutalin/ImageNet_Utils>`__ to
   download image, create a label text for machine learning, etc
2. `Use Docker to run labelImg <https://hub.docker.com/r/tzutalin/py2qt4>`__
3. `Generating the PASCAL VOC TFRecord files <https://github.com/tensorflow/models/blob/4f32535fe7040bb1e429ad0e3c948a492a89482d/research/object_detection/g3doc/preparing_inputs.md#generating-the-pascal-voc-tfrecord-files>`__
4. `App Icon based on Icon by Nick Roach (GPL) <https://www.elegantthemes.com/>`__
5. `Setup python development in vscode <https://tzutalin.blogspot.com/2019/04/set-up-visual-studio-code-for-python-in.html>`__
6. `The link of this project on iHub platform <https://code.ihub.org.cn/projects/260/repository/labelImg>`__

