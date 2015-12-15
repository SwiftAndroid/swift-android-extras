rm -r swiftandroid
mkdir swiftandroid
cd swiftandroid
cp ~/swift/README.android ./
mkdir bin
IFS=" "
for i in swift swift-demangle
do
	echo $i
	strip -o bin/$i ../bin/$i
done
for i in swift-autolink-extract swiftc swiftc-android swift-android-push
do
	cp -P ../bin/$i bin/$i
done
mkdir lib
cp -r ../lib/swift lib/
cd ..
rm swift_android.tar.xz
tar cJf swift_android.tar.xz swiftandroid
