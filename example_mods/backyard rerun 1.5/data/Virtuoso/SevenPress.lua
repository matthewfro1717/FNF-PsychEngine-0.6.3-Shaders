function onCreatePost()
  setProperty('debugKeysChart', null);
end
function onUpdate()
   if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
      triggerEvent('Play Animation', 'PhoneSmash', 'dad')


      playSound('PhoneSmash', 1)
      
      
      loadSong('Aggravation');
   end
end