print('GodMod actvated\n\tF9 - Axe\n\tF10 - Shotgun\n\tF11 - Shotgun Shells');

function GodMode(player)
   if player:getFallTime() > 3 then
      player:setFallTime(0);
   end
   player:getStats():setEndurance(1);
   player:getStats():setHunger(0);
   player:getStats():setThirst(0);
   player:getStats():setBoredom(0);
   player:getStats():setPanic(0);
   player:getStats():setAnger(0);
   player:getStats():setPain(0);
   player:getStats():setSickness(0);
   player:getStats():setStress(0);
   player:getStats():setFitness(1);
   player:getStats():setSanity(1);
   player:getBodyDamage():RestoreToFullHealth();  
   player:setMaxWeight(10000000);
   player:setMaxWeightBase(10000000);
end

function AddItem(character)
   
   --F1 is for Food

if isKeyDown(Keyboard.KEY_Q) and
isKeyDown(Keyboard.KEY_F1) then
character:getInventory():AddItem("Base.Apple");
end
if isKeyDown(Keyboard.KEY_W) and
isKeyDown(Keyboard.KEY_F1) then
character:getInventory():AddItem("Base.Banana");
end
if isKeyDown(Keyboard.KEY_E) and
isKeyDown(Keyboard.KEY_F1) then
character:getInventory():AddItem("Base.Orange");
end
if isKeyDown(Keyboard.KEY_R) and
isKeyDown(Keyboard.KEY_F1) then
character:getInventory():AddItem("Base.Chocolate");
end
if isKeyDown(Keyboard.KEY_T) and
isKeyDown(Keyboard.KEY_F1) then
character:getInventory():AddItem("Base.Crisps");
end

--F2 is for Building materials

if isKeyDown(Keyboard.KEY_Q) and
isKeyDown(Keyboard.KEY_F2) then
character:getInventory():AddItem("Base.Hammer");
end
if isKeyDown(Keyboard.KEY_W) and
isKeyDown(Keyboard.KEY_F2) then
character:getInventory():AddItem("Base.Plank");
end
if isKeyDown(Keyboard.KEY_E) and
isKeyDown(Keyboard.KEY_F2) then
character:getInventory():AddItem("Base.Nails");
end
if isKeyDown(Keyboard.KEY_R) and
isKeyDown(Keyboard.KEY_F2) then
character:getInventory():AddItem("Base.Sledgehammer");
end
if isKeyDown(Keyboard.KEY_T) and
isKeyDown(Keyboard.KEY_F2) then
character:getInventory():AddItem("Base.Axe");
end

--F3 is for Weapons and that jazz

if isKeyDown(Keyboard.KEY_Q) and
isKeyDown(Keyboard.KEY_F3) then
character:getInventory():AddItem("Base.KitchenKnife");
end
if isKeyDown(Keyboard.KEY_W) and
isKeyDown(Keyboard.KEY_F3) then
character:getInventory():AddItem("Base.Shotgun");
end
if isKeyDown(Keyboard.KEY_E) and
isKeyDown(Keyboard.KEY_F3) then
character:getInventory():AddItem("Base.ShotgunShells");
end
if isKeyDown(Keyboard.KEY_R) and
isKeyDown(Keyboard.KEY_F3) then
character:getInventory():AddItem("Base.Bullets9mm");
end
if isKeyDown(Keyboard.KEY_T) and
isKeyDown(Keyboard.KEY_F3) then
character:getInventory():AddItem("Base.Pistol");
end

--F4 is for Miscalleneous

if isKeyDown(Keyboard.KEY_Q) and
isKeyDown(Keyboard.KEY_F4) then
character:getInventory():AddItem("Base.Torch");
end
if isKeyDown(Keyboard.KEY_W) and
isKeyDown(Keyboard.KEY_F4) then
character:getInventory():AddItem("Base.Battery");
end
if isKeyDown(Keyboard.KEY_E) and
isKeyDown(Keyboard.KEY_F4) then
character:getInventory():AddItem("Base.Sheet");
end
if isKeyDown(Keyboard.KEY_R) and
isKeyDown(Keyboard.KEY_F4) then
character:getInventory():AddItem("Base.Wall");
end
if isKeyDown(Keyboard.KEY_V) and
isKeyDown(Keyboard.KEY_F4) then
character:getInventory():AddItem("Base.WaterBottleFull");
end
if isKeyDown(Keyboard.KEY_C) and
isKeyDown(Keyboard.KEY_F4) then
character:getInventory():AddItem("Base.Newspaper");
end
if isKeyDown(Keyboard.KEY_G) and
isKeyDown(Keyboard.KEY_F4) then
character:getInventory():AddItem("Base.Molotov");
end
if isKeyDown(Keyboard.KEY_J) and
isKeyDown(Keyboard.KEY_F4) then
character:getInventory():AddItem("Base.Lighter");
end
end

function unlimitedWeapons(player)
   if isKeyDown(67) then --F9
      player:getInventory():AddItem('Base.Axe')
   elseif isKeyDown(68) then --F10
      player:getInventory():AddItem('Base.Shotgun')
   elseif isKeyDown(87) then --F11
      player:getInventory():AddItem('Base.ShotgunShells')
   end
end

Events.OnPlayerUpdate.Add(GodMode);
Events.OnPlayerUpdate.Add(AddItem);
Events.OnPlayerUpdate.Add(unlimitedWeapons);
