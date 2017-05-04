# This README exaplains how to configure Xcode to work with OpenCV.

First, open Xcode, create a new project and select macOS Command Line Application.
Second, after choosing the project folder, go to Build Settings and search for "Header Search Paths". There you will put:

> /usr/local/include

Third, right below, in the "Library Search Paths" text edit box, type:

> /usr/local/lib

  Fourth, go back to the search bar and search for "Other Linker Flags". There you will place the result of the command $ pkg-config --libs opencv. For the convenience
  here you can copy the results:

> -lopencv_stitching -lopencv_superres -lopencv_videostab -lopencv_aruco -lopencv_bgsegm -lopencv_bioinspired -lopencv_ccalib -lopencv_dpm -lopencv_fuzzy -lopencv_line_descriptor -lopencv_optflow -lopencv_reg -lopencv_saliency -lopencv_stereo -lopencv_structured_light -lopencv_phase_unwrapping -lopencv_rgbd -lopencv_surface_matching -lopencv_tracking -lopencv_datasets -lopencv_text -lopencv_face -lopencv_plot -lopencv_dnn -lopencv_xfeatures2d -lopencv_shape -lopencv_video -lopencv_ximgproc -lopencv_calib3d -lopencv_features2d -lopencv_flann -lopencv_xobjdetect -lopencv_objdetect -lopencv_ml -lopencv_xphoto -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_photo -lopencv_imgproc -lopencv_core

  And then, you are done!
