"""
When the plugin manager starts it calls this file.
This file
calls the main class of the plugin and passes the QGIS interface to it.
iface gives access to the QGIS interface.
"""

from .main import BasemapLoaderPlugin


def classFactory(iface):
    return BasemapLoaderPlugin(iface)
