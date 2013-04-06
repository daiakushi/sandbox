#include <Uefi.h>
#include <Library/UefiLib.h>

INTN ShellAppMain (
    IN    UINTN                Argc,
    IN    CHAR16               **Argv
)
{
    UINTN    index;

    for (index = 0; index < Argc; index++)
        Print(L"Argv[%d] : %s\n", index, Argv[index]);

    return 0;
}

