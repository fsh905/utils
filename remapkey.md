# remap

## macos

### remap right command and right control
> hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x7000000E7,"HIDKeyboardModifierMappingDst":0x7000000E4},{"HIDKeyboardModifierMappingSrc":0x7000000E4,"HIDKeyboardModifierMappingDst":0x7000000E7}]}'
)

### clear set
> hidutil property --set '{"UserKeyMapping":[]}'

keycode:
right gui(cmd): E7
right ctrl: E4

refer:
* https://apple.stackexchange.com/questions/283252/how-do-i-remap-a-key-in-macos-sierra-e-g-right-alt-to-right-control
* https://developer.apple.com/library/archive/technotes/tn2450/_index.html
* https://discussions.apple.com/thread/8133633
