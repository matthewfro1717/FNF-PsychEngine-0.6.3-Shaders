function onUpdate()
   if inGameOver and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
      loadSong('Terminal')
   end
end