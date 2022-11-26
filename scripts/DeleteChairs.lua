function check(p)
   if(p:IsA("Chair")) then
      p:Destroy()
   end

   for(_,v in pairs(p:GetChildren()) then
      if(v:IsA("Chair")) then
         v:Destroy()
      end

      check(v)
   end
end

check(game.Workspace)
