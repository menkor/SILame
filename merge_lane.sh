echo "merging iphone simulator binaries..."

FAT="fat-lame"
THIN=`pwd`/"thin-lame"
LIB="libmp3lame.a"
FRAMEWORK="y"

ARCHS="arm64 armv7s x86_64 i386 armv7"
OUTPUT="Release-iphonesimulator"

rm -rf $OUTPUT/
mkdir -p $OUTPUT/lib/
mkdir -p $OUTPUT/include/

PATHRESULT=""
for ARCH in $ARCHS
do
	echo "merging $ARCH..."
	PATHRESULT="$PATHRESULT $THIN/$ARCH/lib/$LIB"
done
lipo -create $PATHRESULT -output $OUTPUT/lib/$LIB

cp -rf $THIN/x86_64/include/lame/* $OUTPUT/include

if [ "$FRAMEWORK" ]
then
	rm -rf $OUTPUT/lame.framework
	echo "building iphone simulator lame.framework..."
	mkdir -p $OUTPUT/lame.framework/Headers/
	cp -rf $OUTPUT/include/* $OUTPUT/lame.framework/Headers/
	cp -f $OUTPUT/lib/libmp3lame.a $OUTPUT/lame.framework/lame
fi

rm -rf lame.framework
cp -rf $OUTPUT/lame.framework lame.framework

echo "merging iphone binaries..."

ARCHS="arm64 armv7s armv7"
OUTPUT="Release-iphoneos"
rm -rf $OUTPUT/
mkdir -p $OUTPUT/lib/
mkdir -p $OUTPUT/include/
PATHRESULT=""
for ARCH in $ARCHS
do
	echo "merging $ARCH..."
	PATHRESULT="$PATHRESULT $THIN/$ARCH/lib/$LIB"
done
lipo -create $PATHRESULT -output $OUTPUT/lib/$LIB

cp -rf $THIN/x86_64/include/lame/* $OUTPUT/include

if [ "$FRAMEWORK" ]
then
	rm -rf $OUTPUT/lame.framework
	echo "building iphone lame.framework..."
	mkdir -p $OUTPUT/lame.framework/Headers/
	cp -rf $OUTPUT/include/* $OUTPUT/lame.framework/Headers/
	cp -f $OUTPUT/lib/libmp3lame.a $OUTPUT/lame.framework/lame
fi
