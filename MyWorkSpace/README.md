Three basic models for writing UEFI Applications
================================================
只是為了省下每次都要Copy&Paste的時間...內含三個簡單的UEFI Application原型，使用者需要自行從 [Tianocore.org] [1] 下載UDK2010 package，在`MyWorkSpace`下解出以下目錄：

* *BaseTools*
* *MdeModulePkg*
* *MdePkg*
* *ShellPkg*

如果要使用EADK，建議直接下載SVN repository的版本，詳細請參考下列第三種原型的說明

[1]: http://tianocore.org/		"Tianocore.org"

1. ShellEntryApp
----------------
最簡單的UEFI Application基本框架，它的程式進入點原型是
<code>
EFI_STATUS UefiAppMain (
    IN    EFI_HANDLE           ImageHandle,
    IN    EFI_SYSTEM_TABLE     *SystemTable
);
</code>

2. CEntryApp
------------
使用ShellPkg中的`ShellCEntryLib`，這個簡單的wrapper已經將end user執行本程式時傳入的參數解析出來，使用者可以直接利用參數`Argc`、`Argv`將這些參數列舉出來，唯一要注意的是參數的形態是寬字元，程式進入點原型是
<code>
INTN ShellAppMain (
    IN    UINTN                Argc,
    IN    CHAR16               **Argv
);
</code>

3. CStdLibApp
-------------
使用EADK，經過兩層的wrapper包裝，本框架的程式進入點可以如同一般C語言的：
<code>
int main (
    int    argc,
    char   **argv
);
</code>
EADK的版本建議自SVN repository下載，其路徑分別為：

* [https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLib/](https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLib/ "StdLib") (rev.14248)
* [https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLibPrivateInternalFiles/](https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLibPrivateInternalFiles/ "StdLibPrivateInternalFiles") (rev.14248)



