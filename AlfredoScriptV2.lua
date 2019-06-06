
function start()
cd = gg.multiChoice({'[Lobby] Exynos Color and WallHack','[Landed] Aimlock','[Landed]Auto Headshot','[Landed] WallShot','[Lobby] No Recoil','[Landed] Fix No Recoil','[Landed] Super Run Speed','[Landed] High Jump','EXIT'},nil,"Alfredo's Script V2 by Emlin")

if cd == nil then else
if cd[1]== true then ColorAndWallHackExy() end
if cd[2]==true then Aimlock() end
if cd[3]==true then Headshot() end
if cd[4]==true then WallShot() end
if cd[5]==true then NoRecoil() end
if cd[6]==true then NoRecoilFix() end
if cd[7]==true then SuperRunSpeed() end
if cd[8]==true then HighJump() end
if cd[9]==true then os.exit() end
DEFAULT=-1
end
end


function ColorAndWallHackExy()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"40;32;16;2:37"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber('"40"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll('"38"', gg.TYPE_DWORD)
gg.toast("Super Hot!")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('"0.5;2.8025969e-45;192D;4D;2D;224D;14D;5D;-1D"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber('"0.5"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("The Values got Placed into Search Results.")
end


function Aimlock()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("360.0;0.0001;1,478,828,288.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("1998", gg.TYPE_FLOAT)
gg.toast("You Aim Like in a Movie!")
end


function Headshot()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("240", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Hittin Headshots like Jesus!")
end


function WallShot()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("1.0e-7;1.0e-7;2;2;1::512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.clearResults()
gg.searchNumber("100F;1F;1,008,981,770D:99", gg.TYPE_FLOAT, false)
gg.searchNumber("100", gg.TYPE_FLOAT, false)
gg.getResults(100)
gg.editAll("-90", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.0F;0.6;0.1;0.125::55", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.toast("Hackerman.")
end


function NoRecoil()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1D;0.05000000075F;0.10000000149F;0.55000001192F;9.5F;15.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("1,084,227,584D;1D;0.64999997616F;1.2520827e-32F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2520827e-32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.4012985e-43", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("My arms are very strong!")
end


function NoRecoilFix()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.2~0.3;53;30;1::", gg.TYPE_FLOAT, false)
gg.searchNumber("0.2~0.3;1::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Are you going to the Gym?")
end


function SuperRunSpeed()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("60,000.0;5.6051939e-45;1.0::99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("3.5", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Im the Flash!")
end


function HighJump()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("3", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("443", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("2500", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("300;300;60000;600;8192;0;2;0;0;2048;0;300;0;0.05::120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0;0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("You must participate in the Olympics.")
gg.clearResults()
end


gg.toast('Subscribe to Emlin')
print('For Alfredo') 
if gg.BUILD < 5511 then 
print('You need latest version of GameGuardian to run this script. Minimum GG v.8.30.0.') 
os.exit()
end
if gg.isVisible(true) then 
gg.setVisible(false)
end
start()

