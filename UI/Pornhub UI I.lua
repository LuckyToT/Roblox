-- credit https://v3rmillion.net/showthread.php?tid=1121045

local library = loadstring(game:HttpGet("https://remhub.net/upload/ui.lua"))() -- cal the lib
local a = library:NewWindow("Porn","HUB") -- Change to anything
local b = a:NewSection("Ui library")
local d= a:NewSection("Example")
b:Drop("Dropdown",{"1","2","3","4","5"},function(a)
   print("Dropdown : ",a)
end)
local drop = b:Drop("Refreshable",{"1","2","3","4","5"},function(a)
   print("Second Dropdown :",a)
end)
drop:on(game:GetChildren()) -- show refresh button
b:Button("Clear Dropdown",function()
   drop:Refresh({""})
end)
local it = 1
b:Button("Add Item",function()
   it=it+it
   drop:Add("New item : ".. tostring(it))
end)
b:Button("Remove item",function()
   -- drop:Remove('itemname')
   -- have no idea to give you an example
end)
local txt  = b:Text("Text")
local txt2 = b:Text("Even Cooler",'http://www.roblox.com/asset/?id=6022668902')
b:h1("Heading")
local log = true  
b:Button("Change Text",function()
   txt:Refresh("Changed")
end)
b:Button("You can also change the icon too",function()
   log = not log
   if log then
   txt2:Refresh("true","http://www.roblox.com/asset/?id=6023426945")
   else
   txt2:Refresh("false ","http://www.roblox.com/asset/?id=6023426939")

   end
end)
b:Toggle("Toggle",function(a)
   print("Toggle",a)
end)
b:Button("Button",function()
   print("HI")
end)
b:Box("Textbox",function(a)
   print("Textbox :",a)
end)
b:Bind("Toggle GUI",Enum.KeyCode.P,true,function(a)
   library:SetBind(a)
   print("Set".. a ..  " as a gui keybind")
end)
b:Bind("Default Bind",Enum.KeyCode.A,false,function(a)
   print(a)
end)
b:Slider("Slider",1,50,function(a)
   print("Slider",a)
end)

d:Drop("Weapons",{"Sword","Melee","gun"},function(a)
   print(a)
end)

local d_t = {
   "Auto Farm",
   "Auto Stats",
   "Auto Quest",
   "Auto Kick",
   "Anti Mod",
}
d:Slider("Distance ",-5,20)
d:Button("Hide Name")
d:Box("Fake Name")
d:Text("Target : N/A")
for i,v in next,d_t do d:Toggle(v) end
d:h1("END")
Screenshot of ui :
