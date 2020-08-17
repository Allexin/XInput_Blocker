# XInput_Blocker  
XInput dll which always return DEVICE_NOT_CONNECTED  
  
Its made especially for Oculus PC users.  
When you use oculus software - its connect to xinput devices and you can't play vr game, because gamepad interact with oculus.  
Ridiculous situation, and you can't disable gamepad in oculus software.  
  
This blocker provide hack to resolve this.  
  
How to build(you can get already builded libraries from folder dlls_x64):  
Open FakeXINPUT.dpr in delphi and build x64 target  
Make 5 copyes of dll and rename to:  
xinput1_1.dll  
xinput1_2.dll  
xinput1_3.dll  
xinput1_4.dll  
xinput9_1_0.dll  
  
How to install:  
copy pack of dll in each folder in "C:\Program Files\Oculus\Support\"  
restart  
  
VIDEO: https://www.youtube.com/watch?v=10uc_rELoyg
  
now oculus can't interact with xinput devices like wheels or xbox controller  
  
*WHY DELPHI???  
No redists. If you bild dll in delphi its not requeired any additional files to work
