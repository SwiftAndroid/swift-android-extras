#!/bin/sh
mystrip=$ANDROID_NDK_HOME/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/arm-linux-androideabi-strip
for i in ../libiconv-libicu-android/armeabi-v7a/libicu*.so
do
	echo $i
	$mystrip -o ../build/Ninja-ReleaseAssert+stdlib-DebugAssert/swift-linux-x86_64/lib/swift/android/`basename $i` $i
done
