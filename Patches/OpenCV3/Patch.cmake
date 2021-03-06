#+
# This file is called as CMake -P script for the patch step of
# External_OpenCV.cmake when building with OpenCV 3.X
#-

message("Patching OpenCV in ${OpenCV_source}")

# support CUDA 8.0
file(COPY ${OpenCV_patch}/graphcuts.cpp
  DESTINATION ${OpenCV_source}/modules/cudalegacy/src/
)
