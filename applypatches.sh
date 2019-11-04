
wget https://raw.githubusercontent.com/IntelRealSense/meta-intel-realsense/master/recipes-kernel/linux/linux-yocto/realsense_camera_formats_4.19.patch
wget https://raw.githubusercontent.com/IntelRealSense/meta-intel-realsense/master/recipes-kernel/linux/linux-yocto/realsense_metadata_4.19.patch
wget https://raw.githubusercontent.com/IntelRealSense/meta-intel-realsense/master/recipes-kernel/linux/linux-yocto/realsense_hid_4.19.patch
wget https://raw.githubusercontent.com/IntelRealSense/meta-intel-realsense/master/recipes-kernel/linux/linux-yocto/realsense_powerlinefrequency_control_fix_4.19.patch

# Patching kernel for RealSense devices
echo -e "\e[32mApplying realsense-uvc patch\e[0m"
patch -p1 < realsense_camera_formats_4.19.patch
echo -e "\e[32mApplying realsense-metadata patch\e[0m"
patch -p1 < realsense_metadata_4.19.patch
echo -e "\e[32mApplying realsense-hid patch\e[0m"
patch -p1 < realsense_hid_4.19.patch
echo -e "\e[32mApplying realsense-powerlinefrequency-fix patch\e[0m"
patch -p1 < realsense_powerlinefrequency_control_fix_4.19.patch

