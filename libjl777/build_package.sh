git submodule init
git submodule update

make clean
cd ../src
make clean -f makefile.unix
cd leveldb
make clean
cd ../../libjl777
make -j4 btcd
make -j4 api
make dependencies -f Makefile.win
make clean -f Makefile.win
make -j4 btcd -f Makefile.win
make -j4 api -f Makefile.win

zip BitcoinDark-SuperNET-build-linux64 BitcoinDarkd SuperNET.conf.default
zip -j BitcoinDark-SuperNET-build-linux64 scripts/README.txt scripts/run.sh
zip -r BitcoinDark-SuperNET-build-linux64 plugins/cgi/*
cd ..
zip -r libjl777/BitcoinDark-SuperNET-build-linux64 btcd-web-wallet/*
cd libjl777
zip BitcoinDark-SuperNET-build-win64 bin/win64/BitcoinDarkd.exe SuperNET.conf.default
zip -j BitcoinDark-SuperNET-build-win64 scripts/README.txt scripts/run.bat
cd bin/win64
zip -r ../../BitcoinDark-SuperNET-build-win64 plugins/cgi/*
cd ../../..
zip -r libjl777/BitcoinDark-SuperNET-build-win64 btcd-web-wallet/*
