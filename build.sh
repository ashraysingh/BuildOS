# Normal build steps
. build/envsetup.sh
lunch legion_haydn-userdebug

build_gapps=1

# export variable here
export TZ=Asia/Kolkata
export SELINUX_IGNORE_NEVERALLOWS=true
export BUILD_BROKEN_DUP_RULES=true
export RELAX_USES_LIBRARY_CHECK=true
export LEGION_GAPPS=false
#export TARGET_BOOTANIMATION_RES=1080

exp_gapps() {
export LEGION_GAPPS=true
}

compile_plox () {
make bacon -j16
}
