import base64
import os

print(base64.encodestring(os.urandom(50)))
