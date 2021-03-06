Three basic models for writing UEFI Applications
================================================
只是為了省下每次都要Copy&Paste的時間……內含三個簡單的UEFI Application原型，使用者需要自行從[Tianocore.org](http://tianocore.org/)下載UDK2010 package，在`MyWorkSpace`下解出以下目錄及檔案：

* *BaseTools*
* *MdeModulePkg*
* *MdePkg*
* *ShellPkg*
* *edksetup.bat*

`tools_def.txt`新增了<strong>WDK7600</strong>及<strong>WDK7600xASL</strong>兩套toolchain，預設的WDK安裝路徑是`D:\WINDDK\7600.16385.1\`，`target.txt`中的`ACTIVE_PLATFORM`已經修改為：<strong>ShellAppPkg/ShellAppPkg.dsc</strong>，`TARGET`：<strong>RELEASE</strong>，`TARGET_ARCH`：<strong>X64</strong>，`TOOL_CHAIN_TAG`：<strong>WDK7600</strong>，請依自行需要修改。

若要使用EADK，建議直接下載SVN repository的版本，詳細請參考下列[第三種原型](#3-cstdlibapp)的說明


1. ShellEntryApp
----------------
最簡單的UEFI Application基本框架，它的程式進入點原型是
```C
EFI_STATUS UefiAppMain (
    IN    EFI_HANDLE           ImageHandle,
    IN    EFI_SYSTEM_TABLE     *SystemTable
);
```

2. CEntryApp
------------
使用ShellPkg中的`ShellCEntryLib`，這個簡單的wrapper已經將end user執行本程式時傳入的參數解析出來，使用者可以直接利用參數`Argc`、`Argv`將這些參數列舉出來，唯一要注意的是參數的形態是寬字元，程式進入點原型是
```C
INTN ShellAppMain (
    IN    UINTN                Argc,
    IN    CHAR16               **Argv
);
```

3. CStdLibApp
-------------
使用EADK，經過兩層的wrapper包裝，本框架的程式進入點可以如同一般C語言的：
```C
int main (
    int    argc,
    char   **argv
);
```
EADK的版本建議自SVN repository下載，其路徑分別為：

* [https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLib/](https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLib/ "StdLib") (rev.14248)
* [https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLibPrivateInternalFiles/](https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLibPrivateInternalFiles/ "StdLibPrivateInternalFiles") (rev.14248)

可使用SVN指令下載：
```
svn export -r 14248 https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLib/ StdLib
svn export -r 14248 https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLibPrivateInternalFiles/ StdLibPrivateInternalFiles
```

Reference
---------
* [Add Windows WDK 7600.16385.1 to EdkII Tool Chain](http://olddogsnewtricks.logdown.com/posts/35187-add-windows-wdk-76-dot-16385-dot-1-to-edkii-tool-chain)
* [How to Write an Application Under UEFI Shell](http://olddogsnewtricks.logdown.com/posts/35188-how-to-write-an-application-under-uefi-shell)
* [How to Write an Application Under UEFI Shell (With ShellPkg)](http://olddogsnewtricks.logdown.com/posts/35189-how-to-write-an-application-under-uefi-shell-with-shellpkg)
* [How to Write an Application Under UEFI Shell (With EADK)](http://olddogsnewtricks.logdown.com/posts/35190-how-to-write-an-application-under-uefi-shell-with-eadk)
