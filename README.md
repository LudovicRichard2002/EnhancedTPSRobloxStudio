# Enhanced TPS For RobloxStudio

## Overview

This repository contains several files (LUA only) used to make RobloxStudio's third person template better for shooting games.
The Enhanced version (here). Offers better gameplay and greater simplicity for tablet and smartphone players.

## Features

- "Over the shoulder" (TPS) type camera.
- "AntiClimb System" that prevent the automatic climb script to be called.
-  Ability to run by pressing SHIFT.
-  Modulable motion blur.

## Sprint

The sprint speed value is stocked in the "sprintSpeed" variable.
The walking speed is stocked in the "walkSpeed" variable.
Those values can be easily changed in "sprint.lua".

```LUA
local walkSpeed = 16 --Change walk speed value here
local sprintSpeed = 27 --Change sprint speed value here
```

The set input key is "Shift" but can be easily changed in "sprint.lua". We could of course imagine,
replacing this input by an user interface for our dear tablet and smartphone users.


```LUA
---In the function part---
if input.KeyCode == Enum.KeyCode.LeftShift then

---In the condition part---
if input.KeyCode == Enum.KeyCode.LeftShift then
```

## TPSCamera

The TPSCamera file contain serval features that prevents camera from spinning 360°, zooming with the mouse cursor,
displaying the mouse cursor. The camera is slightly located over the player's right shoulder. It turns as the player turns
wich makes the movement easier for tablet and smartphone users since they don't have to control the character rotation.

The action of showing the mouse cursor can be changed in "TPSCamera.lua" by
replacing false by true line 46.

```Lua
if inputState == Enum.UserInputState.Begin then
		UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
		UserInputService.MouseIconEnabled = false -- Replace by true to show mouse cursor.
```

## MotionBlur

The motionBlur file adds a blury effect when the player rotate the camera (in every angle). This effect can be amplified or reduced 
by changing the values in "MotionBlur.lua" line 4 and 5. I recommend using small values.

```LUA
local blurAmount = 4  -- Change the value here
local blurAmplifier = 2 -- Change the value here
```

## AntiClimb

The AntiClimb simply disable the climbing in every state of the character. You can change this feature in "AntiClimb.lua" line 5 by
replacing false by true.

```LUA
humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
```

## Installation

Those files must be located in StarterPlayer --> StarterPlayerScripts
