#!/bin/sh
mystrip=$ANDROID_NDK_HOME/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/arm-linux-androideabi-strip
for i in ../libiconv-libicu-android/armeabi-v7a/libicu*.so
do
	echo $i
	$mystrip -o ../build/Ninja-ReleaseAssert+stdlib-DebugAssert/swift-linux-x86_64/lib/swift/android/`basename $i` $i
done

# icu must be placed in ../icu, relative to swift source directory.
# See: https://github.com/apple/swift/compare/master...SwiftAndroid:20dbe893a8f2fb77bf8fc7f067c602d273181362?expand=1#diff-820a1d13441195f42bb1712046b14552R29
cp -r ../libiconv-libicu-android/armeabi-v7a/icu ../icu
