======================
ARToolKit(reorganized) 
======================
ARToolKit-2.7.1.2とDSVL-0.0.8bをWindowsでビルドしやすいように再編成した。
ARToolKit-2.7.2.1が最新だったので差し替え。

license
=======
ARToolKitとDSVLに基づいてGPL。

history
=======
* 20130122 ARToolKitとDSVLでひとつのdllを生成するように変更した。
* 20130119 ARToolKitを2.7.1.2から2.7.2.1に差し替え。
* 20130118 新規。DSVLのiterの修正。DSVL, ARToolKitのdllを作らないようにした。

require
=======
VC++2010 express edition
------------------------
コンパイラ

Windows SDK
-----------
Samples/Multimedia/DirectShow/BaseClassesに含まれるstreams.hとビルド結果のstrmbase.libが必要。

Windows SDK(v6.0A/v6.1A)
------------------------
Include/qedit.hが必要。

Windows DDK
-----------
DSVLがatlを使っている。

premake4
--------
vcのソリューション、プロジェクト生成に使う。

build
=====
streamsディレクトリに
* $(Windows SDK DIR)/Samples/Multimedia/DirectShow/BaseClasses/下の.cppと.h
* $(Windows SDK DIR)/Include/qedit.h
をコピーする

ctlutil.hの修正
---------------
Windows SDK v7.1では不要だった。VC6とかなら通りそうだが・・・
::
    LONG operator=(LONG);

wxdebug.cppの修正
-----------------
Windows SDK v7.1では不要だった。VC6とかなら通りそうだが・・・
::
    static DWORD g_dwLastRefresh = 0;

winutil.cppの修正
-----------------
Windows SDK v7.1では不要だった。VC6とかなら通りそうだが・・・
::
    // for文のスコープバグ？
    UINT Count;
    for (Count = 0;Count < Result;Count++)

outputq.cppの修正
-----------------
Windows SDK v7.1では不要だった。VC6とかなら通りそうだが・・・
::
    // for文のスコープバグ？
    long iDone;
    for (iDone = 0;

qedit.hの修正
-------------
::
    //#include "dxtrans.h"
    
    // 4か所
    //: public IDXEffect

vcのsolutionを生成
------------------
::

    > premake4 vs2010
    
vcで普通にビルドする

directory
=========
ar
--
ARToolKit-2.7.1.2のincludeとlib

data
----
ARToolKit-2.7.1.2のbin/Data
DSVL-0.0.8bのmedia

debug
-----
glut32.dll

doc
---
オリジナルのREADMEなど。

dsvl
----
DSVL-0.0.8bのsrc

dsvlsample
----------
DSVL-0.0.8bのsrc/glutSample.cpp

examples
--------
ARToolKit-2.7.1.2のexamples

glut
----
glutのimportライブラリとヘッダ

release
-------
glut32.dll

streams
-------
Samples/Multimedia/DirectShow/BaseClassesのcppとhとqedit.hをここにコピーするべし

tinyxml
-------
DSVL-0.0.8bのextlib/tinyxml

