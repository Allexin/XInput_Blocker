library FakeXINPUT;

uses
  Windows;

{$R *.res}

const
  ERROR_DEVICE_NOT_CONNECTED = 1167;

  type
    PXInputGamepad = ^TXInputGamepad;
    _XINPUT_GAMEPAD = record
    wButtons: Word;
    bLeftTrigger: Byte;
    bRightTrigger: Byte;
    sThumbLX: Smallint;
    sThumbLY: Smallint;
    sThumbRX: Smallint;
    sThumbRY: Smallint;
  end;
  XINPUT_GAMEPAD = _XINPUT_GAMEPAD;
  TXInputGamepad = XINPUT_GAMEPAD;

  PXInputState = ^TXInputState;
  _XINPUT_STATE = record
    dwPacketNumber: DWORD;
    Gamepad: TXInputGamepad;
  end;
  XINPUT_STATE = _XINPUT_STATE;
  TXInputState = XINPUT_STATE;

  PXInputVibration = ^TXInputVibration;
  _XINPUT_VIBRATION = record
    wLeftMotorSpeed:  word;
    wRightMotorSpeed: word;
  end;
  XINPUT_VIBRATION = _XINPUT_VIBRATION;
  TXInputVibration = _XINPUT_VIBRATION;

  PXInputCapabilities = ^TXInputCapabilities;
  _XINPUT_CAPABILITIES = record
    _Type: Byte;
    SubType: Byte;
    Flags: Word;
    Gamepad: TXInputGamepad;
    Vibration: TXInputVibration;
  end;
  XINPUT_CAPABILITIES = _XINPUT_CAPABILITIES;
  TXInputCapabilities = _XINPUT_CAPABILITIES;

  PXInputBatteryInformation = ^TXInputBatteryInformation;
  _XINPUT_BATTERY_INFORMATION = record
    BatteryType: Byte;
    BatteryLevel: Byte;
  end;
  XINPUT_BATTERY_INFORMATION = _XINPUT_BATTERY_INFORMATION;
  TXInputBatteryInformation = _XINPUT_BATTERY_INFORMATION;

  PXInputKeystroke = ^TXInputKeystroke;
  _XINPUT_KEYSTROKE = record
    VirtualKey: Word;
    Unicode: WideChar;
    Flags: Word;
    UserIndex: Byte;
    HidCode: Byte;
  end;
  XINPUT_KEYSTROKE = _XINPUT_KEYSTROKE;
  TXInputKeystroke = _XINPUT_KEYSTROKE;

function DllMain(Inst: LongWord; Reason: DWORD; const Reserved): boolean;
begin
  Result:=true;
end;

function XInputGetState(
    dwUserIndex: DWORD;
    out pState: TXInputState
 ): DWORD; stdcall;
var
  keys: DWORD;
begin
  Result:=ERROR_DEVICE_NOT_CONNECTED;
end;

function XInputSetState(
    dwUserIndex: DWORD;
    const pVibration: TXInputVibration
 ): DWORD; stdcall;
begin
    Result:=ERROR_DEVICE_NOT_CONNECTED;
end;

function XInputGetCapabilities(
    dwUserIndex: DWORD;
    dwFlags: DWORD;
    out pCapabilities: TXInputCapabilities
 ): DWORD; stdcall;
begin
  Result:=ERROR_DEVICE_NOT_CONNECTED;
end;

procedure XInputEnable(
    enable: BOOL
 ); stdcall;
begin
end;

function XInputGetDSoundAudioDeviceGuids(
    dwUserIndex: DWORD;
    out pDSoundRenderGuid: TGUID;
    out pDSoundCaptureGuid: TGUID
 ): DWORD; stdcall;
begin
    Result:=ERROR_DEVICE_NOT_CONNECTED;
end;

function XInputGetBatteryInformation(
    dwUserIndex: DWORD;
    devType: Byte;
    out pBatteryInformation: TXInputBatteryInformation
 ): DWORD; stdcall;
begin
    Result:=ERROR_DEVICE_NOT_CONNECTED;
end;

function XInputGetKeystroke(
    dwUserIndex: DWORD;
    dwReserved: DWORD;
    var pKeystroke: TXInputKeystroke
 ): DWORD; stdcall;
begin
    Result:=ERROR_DEVICE_NOT_CONNECTED;
end;

function XInputGetStateEx(
    dwUserIndex: DWORD;
    out pState: TXInputState
 ): DWORD; stdcall;
var
  keys: DWORD;
begin
    Result:=ERROR_DEVICE_NOT_CONNECTED;
end;

function XInputWaitForGuideButton(
    dwUserIndex: DWORD;
    dwFlags: DWORD;
    const LPVOID
 ): DWORD; stdcall;
begin
    Result:=ERROR_DEVICE_NOT_CONNECTED;
end;

function XInputCancelGuideButtonWait(
    dwUserIndex: DWORD               
): DWORD; stdcall;
begin
    Result:=ERROR_DEVICE_NOT_CONNECTED;
end;

function XInputPowerOffController(
    dwUserIndex: DWORD
): DWORD; stdcall;
begin
    Result:=ERROR_DEVICE_NOT_CONNECTED;
end;

exports
  DllMain index 1, XInputGetState index 2, XInputSetState index 3, XInputGetCapabilities index 4, XInputEnable index 5,
  XInputGetDSoundAudioDeviceGuids index 6, XInputGetBatteryInformation index 7, XInputGetKeystroke index 8,

  XInputGetStateEx index 100, XInputWaitForGuideButton index 101, XInputCancelGuideButtonWait index 102, XInputPowerOffController index 103;
begin

end.