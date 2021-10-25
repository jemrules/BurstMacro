/*
Made by jemrules
Social:
  Youtube: https://www.youtube.com/channel/UCom0EJ3O9vKFKzKyfin7kSQ
  Twitch: https://www.twitch.tv/jemrulespanda
  Github: https://github.com/jemrules/BurstMacro

Note:
  If you want to make a video on this auto hot key script, then you have to link a my social's in the description.
  Thank you!
*/

InputBox, RPM, Gun RPM, Enter your gun RPM here..
InputBox, BA, Burst Amount, Enter how many bullets are in the burst here..
~$LButton::
    KeyWait LButton, T0.08		
    If ErrorLevel
        While GetKeyState("LButton", "P"){
            Click
            Sleep ((60000/%RPM%)%BA%*+10)/10
        }