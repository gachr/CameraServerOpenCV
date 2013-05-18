project( serverCamara )
find_package( OpenCV REQUIRED )
add_executable( serverCamara serverCamara )
target_link_libraries( serverCamara ${OpenCV_LIBS} )
