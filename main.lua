#!/usr/bin/env lua
-- Сбор данных
local user = os.getenv("USER") or os.getenv("LOGNAME") or "User"
local vendor = io.open("/sys/class/dmi/id/sys_vendor", "r")
local vend = vendor and vendor:read("*l")
if vendor then vendor:close() end
local os_name = (io.open("/etc/os-release", "r"):read("*a"):match('PRETTY_NAME="([^"]*)"') or "Unknown")
local host = (vend):match("^%s*(.-)%s*$")
local shell = os.getenv("SHELL")
shell = shell:match("([^/]+)$")
local wm = os.getenv("XDG_CURRENT_DESKTOP") or os.getenv("DESKTOP_SESSION")
-- Показ информации
print("\27[1;91m   _          _    ")
print("  / )        ( \\   ")
print(" / /____  ____\\ \\  ")
print("(_/(____)(____)\\_) \27[0m")
print("   \27[3;35mHello, " .. user .. "\27[0m")
print("")
print("\27[1;35mOS\27[0m        " .. os_name)
print("\27[1;35mHost\27[0m      " .. host)
print("\27[1;35mShell\27[0m     " .. shell)
print("\27[1;35mWM\27[0m        " .. wm)
