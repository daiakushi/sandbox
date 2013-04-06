Three basic models for writing UEFI Applications
================================================
�u�O���F�٤U�C�����nCopy&Paste���ɶ�...���t�T��²�檺UEFI Application�쫬�A�ϥΪ̻ݭn�ۦ�q [Tianocore.org] [1] �U��UDK2010 package�A�b`MyWorkSpace`�U�ѥX�H�U�ؿ��G

* *BaseTools*
* *MdeModulePkg*
* *MdePkg*
* *ShellPkg*

�p�G�n�ϥ�EADK�A��ĳ�����U��SVN repository�������A�ԲӽаѦҤU�C�ĤT�ح쫬������

[1]: http://tianocore.org/		"Tianocore.org"

1. ShellEntryApp
----------------
��²�檺UEFI Application�򥻮ج[�A�����{���i�J�I�쫬�O
<code>
EFI_STATUS UefiAppMain (
    IN    EFI_HANDLE           ImageHandle,
    IN    EFI_SYSTEM_TABLE     *SystemTable
);
</code>

2. CEntryApp
------------
�ϥ�ShellPkg����`ShellCEntryLib`�A�o��²�檺wrapper�w�g�Nend user���楻�{���ɶǤJ���ѼƸѪR�X�ӡA�ϥΪ̥i�H�����Q�ΰѼ�`Argc`�B`Argv`�N�o�ǰѼƦC�|�X�ӡA�ߤ@�n�`�N���O�Ѽƪ��κA�O�e�r���A�{���i�J�I�쫬�O
<code>
INTN ShellAppMain (
    IN    UINTN                Argc,
    IN    CHAR16               **Argv
);
</code>

3. CStdLibApp
-------------
�ϥ�EADK�A�g�L��h��wrapper�]�ˡA���ج[���{���i�J�I�i�H�p�P�@��C�y�����G
<code>
int main (
    int    argc,
    char   **argv
);
</code>
EADK��������ĳ��SVN repository�U���A����|���O���G

* [https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLib/](https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLib/ "StdLib") (rev.14248)
* [https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLibPrivateInternalFiles/](https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/StdLibPrivateInternalFiles/ "StdLibPrivateInternalFiles") (rev.14248)



