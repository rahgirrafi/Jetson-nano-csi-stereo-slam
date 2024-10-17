# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/opencv4".split(';') if "${prefix}/include;/usr/include/opencv4" != "" else []
PROJECT_CATKIN_DEPENDS = "cv_bridge;dynamic_reconfigure;image_transport".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcompressed_depth_image_transport;/usr/lib/aarch64-linux-gnu/libopencv_calib3d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_core.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dnn.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_features2d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_flann.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_gapi.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_highgui.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_ml.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_objdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_photo.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_stitching.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_video.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_videoio.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_alphamat.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_aruco.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_bgsegm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_bioinspired.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_ccalib.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaarithm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudabgsegm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudacodec.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudafeatures2d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudafilters.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaimgproc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudalegacy.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaobjdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaoptflow.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudastereo.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudawarping.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudev.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_datasets.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dnn_objdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dnn_superres.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dpm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_face.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_freetype.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_fuzzy.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_hdf.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_hfs.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_img_hash.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_intensity_transform.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_line_descriptor.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_mcc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_optflow.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_phase_unwrapping.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_plot.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_quality.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_rapid.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_reg.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_rgbd.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_saliency.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_shape.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_signal.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_stereo.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_structured_light.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_superres.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_surface_matching.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_text.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_tracking.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_videostab.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_viz.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_wechat_qrcode.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_xfeatures2d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_ximgproc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_xobjdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_xphoto.so.4.10.0".split(';') if "-lcompressed_depth_image_transport;/usr/lib/aarch64-linux-gnu/libopencv_calib3d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_core.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dnn.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_features2d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_flann.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_gapi.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_highgui.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_ml.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_objdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_photo.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_stitching.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_video.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_videoio.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_alphamat.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_aruco.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_bgsegm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_bioinspired.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_ccalib.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaarithm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudabgsegm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudacodec.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudafeatures2d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudafilters.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaimgproc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudalegacy.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaobjdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudaoptflow.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudastereo.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudawarping.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_cudev.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_datasets.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dnn_objdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dnn_superres.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_dpm.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_face.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_freetype.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_fuzzy.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_hdf.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_hfs.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_img_hash.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_intensity_transform.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_line_descriptor.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_mcc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_optflow.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_phase_unwrapping.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_plot.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_quality.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_rapid.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_reg.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_rgbd.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_saliency.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_shape.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_signal.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_stereo.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_structured_light.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_superres.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_surface_matching.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_text.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_tracking.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_videostab.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_viz.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_wechat_qrcode.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_xfeatures2d.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_ximgproc.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_xobjdetect.so.4.10.0;/usr/lib/aarch64-linux-gnu/libopencv_xphoto.so.4.10.0" != "" else []
PROJECT_NAME = "compressed_depth_image_transport"
PROJECT_SPACE_DIR = "/home/robot/catkin_ws/install"
PROJECT_VERSION = "1.9.5"
