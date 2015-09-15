/****************************
*							*
*	     BitcoinDark	    *
* 							*
****************************/

BitcoinDark 64-bit with InstantDEX initial BETA

*Disclaimer*
This software is in BETA state. It is not guaranteed to work! Please raise any issues at github.com/jl777/btcd

It is open source. This version is built from github.com/jl777/btcd commit cdf4e728f761b23f0ef5a78deaeb1ef4c95c488d


#How to Run:

1) Double click on run.bat
2) Open your browser at http://127.0.0.1:8080 (it may take a bit for the server to start, so refresh every few seconds until it does)

If you have run BitcoinDark before, BACK UP everything in C:\Users\<username>\AppData\Roaming\BitcoinDark
There have been some issues with the chain needing to resync when switching back to vanilla BitcoinDark.
Also, always back up your wallet to be safe.

Run NxT if you want to be able to trade on Nxt Asset Exchange (http://nxt.org)
If you have already set up a BitcoinDark.conf file, your rpcuser and rpcpassword MUST be lines 1 and 2, respectively.

In order to use InstantDEX beta, your BitcoinDark wallet must be unlocked (Make sure to uncheck just for staking).
On first launch, if your password is new or unencrypted, you will be asked to choose a password. 
Keep track of this! If you lose it, your wallet won't be able to send funds.

If you send funds from BitcoinDark, your wallet will automatically re-lock for everything but staking. You will then need to click the
gear wheel on the left, lock your wallet, and click 'Unlock Wallet'. Again, make sure to uncheck just for staking.

To navigate to InstantDEX, click the gear wheel on the left and click on 'InstantDEX'

InstantDEX will work right out of the box, but if you want trade functionality, you'll need to supply some info.
You can see SuperNET.conf.default for a template, just fill in your information (nxt passphrase, btc-e api key, etc.)
and rename it to SuperNET.conf, then restart BitcoinDarkd.

#Requirements:
64-bit Windows (32-bit is possible, we will be providing one soon)
Node.js (https://nodejs.org/en)

If you are on Linux, MAC OS, or are just paranoid, you can always build all of this yourself. You must build on a Linux
host machine, even if you are building for Windows!
Instructions at github.com/jl777/btcd/libjl777

Big thanks to everyone who made this possible!

jl777
veririchd
cryptosleuth
mezzovide
and many more!

You can join sprnt.slack.com for more information, 
or post on https://bitcointalk.org/index.php?topic=684090.0
please join slack today!

-BTCDDev