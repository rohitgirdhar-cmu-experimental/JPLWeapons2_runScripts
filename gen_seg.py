import zmq
import os
import subprocess

datadir = '/memexdata/Dataset/processed/0008_JPLWeapons2/'
lstfpath = os.path.join(datadir, 'lists/Images.txt')
imgsdir = os.path.join(datadir, 'corpus/')
segoutdir = '/srv2/rgirdhar/Work/Code/0005_ObjSegment/scripts/seg_service_scripts_2/temp-dir/'
finaloutdir = os.path.join(datadir, 'features/Segments')

context = zmq.Context()
socket = context.socket(zmq.REQ)
socket.connect("tcp://localhost:5559")

with open(lstfpath) as f:
  lst = f.read().splitlines()

i = 1
FILES_PER_DIR=1000
for el in lst:
  subprocess.call('mkdir -p ' + finaloutdir + '/' + str(i/FILES_PER_DIR), shell=True)
  socket.send(os.path.join(imgsdir, el) + "\0")
  message = socket.recv()
  subprocess.call('cp ' + segoutdir + '/result.jpg ' + finaloutdir + '/' + str(i/FILES_PER_DIR) + '/' + str(i) + '.jpg', shell=True)
  i += 1
