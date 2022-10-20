# Import the necessary libraries
from PIL import Image
from numpy import asarray
import numpy as np
import cv2
import glob

filenames = glob.glob("C:\\Users\\admin\\Desktop\\NeRF\\nvdiffrec\\data\\nerd\\test_fox_rescaled\\masks\\*")
filenames.sort()

for file in filenames:
	grey_img = cv2.imread(file, cv2.IMREAD_GRAYSCALE)
	grey_img[grey_img>0]=255
	cv2.imwrite(file,grey_img)

	#img = cv2.imread(file)
	#img[img>0]=255
	#cv2.imwrite(file,img)

# asarray() class is used to convert
# PIL images into NumPy arrays
#numpydata = asarray(img)
#numpydata = np.sum(numpydata, axis=2)
#numpydata[numpydata>0]=1
#print(np.sum(numpydata))



#im = Image.fromarray(numpydata)
#im.save("mask.png")
#np.save("mask2.png", numpydata) 