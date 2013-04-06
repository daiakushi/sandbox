[Defines]
  PLATFORM_NAME            = ShellAppPkg
  PLATFORM_GUID            = c81b19c5-ea2f-475e-ac5a-396cede24de6
  PLATFORM_VERSION         = 0.50
  DSC_SPECIFICATION        = 0x00010006
  OUTPUT_DIRECTORY         = Build/ShellAppPkg
  SUPPORTED_ARCHITECTURES  = IA32|X64
  BUILD_TARGETS            = DEBUG|RELEASE
  SKUID_IDENTIFIER         = DEFAULT

[LibraryClasses]
  UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf
  UefiDriverEntryPoint|MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint.inf
  UefiBootServicesTableLib|MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf
  DevicePathLib|MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib.inf
  DebugLib|MdePkg/Library/BaseDebugLibNull/BaseDebugLibNull.inf
# DebugLib|MdePkg/Library/UefiDebugLibConOut/UefiDebugLibConOut.inf
  DebugPrintErrorLevelLib|MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib.inf  
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf
  UefiLib|MdePkg/Library/UefiLib/UefiLib.inf
  BaseLib|MdePkg/Library/BaseLib/BaseLib.inf
  BaseMemoryLib|MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf
  PrintLib|MdePkg/Library/BasePrintLib/BasePrintLib.inf
  UefiRuntimeServicesTableLib|MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib.inf
  HiiLib|MdeModulePkg/Library/UefiHiiLib/UefiHiiLib.inf
  UefiHiiServicesLib|MdeModulePkg/Library/UefiHiiServicesLib/UefiHiiServicesLib.inf
  UefiRuntimeLib|MdePkg/Library/UefiRuntimeLib/UefiRuntimeLib.inf

[Components]
  # Standard UEFI Shell entry application
  ShellAppPkg/ShellEntryApp/ShellEntryApp.inf

  # C entry application
  ShellAppPkg/CEntryApp/CEntryApp.inf

  # Application by C standard library
  ShellAppPkg/CStdLibApp/CStdLibApp.inf

[BuildOptions]
  MSFT:*_*_*_CC_FLAGS      = /wd4819

# Uncomment this for Nt32Pkg build
# DEFINE  EMULATE = 1

!include ../StdLib/StdLib.inc
