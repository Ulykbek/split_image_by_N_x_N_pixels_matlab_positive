# split_image_by_N_x_N_pixels_matlab_positive
For the Positive Set of image patches, I have written code in the MatLab. First I took the ISO standard output which contains extracted minutia coordinates(minutia triplet) and number of minutia. I take only x and y coordinates. Then I cut image around that coordinates. Size of each patch is 16x16 pixels.

In order to enlarge the number of data in dataset I am rotating the every image 3 times. So If we have N minutia in every fingerprint image. We are generating N*4 patches for a single image.

Patches were tested and confirmed by manually splitting patch pixels in photoshop.