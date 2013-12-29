#!/bin/zsh

ruby benchmarkRb/src/makeInputFile.rb > input.txt

pushd benchmarkHs
cabal configure
cabal build
popd

echo "Ruby: about 6 sec"
time ruby benchmarkRb/src/echo.rb < input.txt > /dev/null
echo ""

echo "Haskell ByteString: about 3 sec"
time benchmarkHs/dist/build/echo_byteString/echo_byteString < input.txt > /dev/null
echo ""

echo "Haskell Prelude String: about 20 sec"
time benchmarkHs/dist/build/echo_preludeString/echo_preludeString < input.txt > /dev/null
echo ""
