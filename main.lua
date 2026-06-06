#!/usr/bin/env lua


print("\27[1;36m            ___")
print("  ___ _  __/ _/")
print(" / _ \\ |/ / _/ ")
print("/_//_/___/_/   \27[0m")
print("")
local vendor = io.open("/sys/class/dmi/id/sys_vendor", "r")
local vend = vendor and vendor:read("*l")
if vendor then vendor:close() end
local os_name = (io.open("/etc/issue", "r"):read("*l")):gsub("%s*\\.-$", "")
local host = (vend):match("^%s*(.-)%s*$")
local shell = os.getenv("SHELL")
shell = shell:match("([^/]+)$")
local wm = os.getenv("XDG_CURRENT_DESKTOP") or os.getenv("DESKTOP_SESSION")

print("\27[1;35mOS\27[0m        CachyOS Linux")
print("\27[1;35mHost\27[0m        " .. host)
print("\27[1;35mShell\27[0m        " .. shell)
print("\27[1;35mWM\27[0m        " .. wm)
