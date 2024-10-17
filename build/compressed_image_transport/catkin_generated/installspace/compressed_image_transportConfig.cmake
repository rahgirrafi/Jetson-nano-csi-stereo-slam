# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(compressed_image_transport_CONFIG_INCLUDED)
  return()
endif()
set(compressed_image_transport_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(compressed_image_transport_SOURCE_PREFIX /home/robot/catkin_ws/src/image_transport_plugins/compressed_image_transport)
  set(compressed_image_transport_DEVEL_PREFIX /home/robot/catkin_ws/devel/.private/compressed_image_transport)
  set(compressed_image_transport_INSTALL_PREFIX "")
  set(compressed_image_transport_PREFIX ${compressed_image_transport_DEVEL_PREFIX})
else()
  set(compressed_image_transport_SOURCE_PREFIX "")
  set(compressed_image_transport_DEVEL_PREFIX "")
  set(compressed_image_transport_INSTALL_PREFIX /home/robot/catkin_ws/install)
  set(compressed_image_transport_PREFIX ${compressed_image_transport_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'compressed_image_transport' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(compressed_image_transport_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include;/usr/include/opencv4 " STREQUAL " ")
  set(compressed_image_transport_INCLUDE_DIRS "")
  set(_include_dirs "include;/usr/include/opencv4")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://www.ros.org/wiki/image_transport_plugins " STREQUAL " ")
    set(_report "Check the website 'http://www.ros.org/wiki/image_transport_plugins' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'David Gossow <dgossow@willowgarage.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${compressed_image_transport_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'compressed_image_transport' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'compressed_image_transport' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '\${prefix}/${idir}'.  ${_report}")
    endif()
    _list_append_unique(compressed_image_transport_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "compressed_image_transport;/usr/lib/aarch64-linux-gnu/libopencv_calib3d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_core.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dnn.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_features2d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_flann.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_gapi.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_highgui.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_ml.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_objdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_photo.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_stitching.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_video.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_videoio.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_alphamat.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_aruco.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_bgsegm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_bioinspired.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_ccalib.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaarithm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudabgsegm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudacodec.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudafeatures2d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudafilters.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaimgproc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudalegacy.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaobjdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaoptflow.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudastereo.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudawarping.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudev.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_datasets.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dnn_objdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dnn_superres.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dpm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_face.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_freetype.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_fuzzy.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_hdf.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_hfs.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_img_hash.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_intensity_transform.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_line_descriptor.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_mcc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_optflow.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_phase_unwrapping.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_plot.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_quality.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_rapid.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_reg.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_rgbd.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_saliency.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_shape.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_signal.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_stereo.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_structured_light.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_superres.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_surface_matching.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_text.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_tracking.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_videostab.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_viz.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_wechat_qrcode.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_xfeatures2d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_ximgproc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_xobjdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_xphoto.so.4.10.0")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND compressed_image_transport_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND compressed_image_transport_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT compressed_image_transport_NUM_DUMMY_TARGETS)
      set(compressed_image_transport_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::compressed_image_transport::wrapped-linker-option${compressed_image_transport_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR compressed_image_transport_NUM_DUMMY_TARGETS "${compressed_image_transport_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::compressed_image_transport::wrapped-linker-option${compressed_image_transport_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND compressed_image_transport_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND compressed_image_transport_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND compressed_image_transport_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/robot/catkin_ws/install/lib;/home/robot/catkin_ws/devel/lib;/opt/ros/melodic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(compressed_image_transport_LIBRARY_DIRS ${lib_path})
      list(APPEND compressed_image_transport_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'compressed_image_transport'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND compressed_image_transport_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(compressed_image_transport_EXPORTED_TARGETS "compressed_image_transport_gencfg")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${compressed_image_transport_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "cv_bridge;dynamic_reconfigure;image_transport")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 compressed_image_transport_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${compressed_image_transport_dep}_FOUND)
      find_package(${compressed_image_transport_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${compressed_image_transport_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(compressed_image_transport_INCLUDE_DIRS ${${compressed_image_transport_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(compressed_image_transport_LIBRARIES ${compressed_image_transport_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${compressed_image_transport_dep}_LIBRARIES})
  _list_append_deduplicate(compressed_image_transport_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(compressed_image_transport_LIBRARIES ${compressed_image_transport_LIBRARIES})

  _list_append_unique(compressed_image_transport_LIBRARY_DIRS ${${compressed_image_transport_dep}_LIBRARY_DIRS})
  list(APPEND compressed_image_transport_EXPORTED_TARGETS ${${compressed_image_transport_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${compressed_image_transport_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
