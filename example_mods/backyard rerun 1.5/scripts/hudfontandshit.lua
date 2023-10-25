function onCreatePost()

    makeLuaText("song", songName, 550, 10, 40)
    setTextAlignment("song", "left")
    addLuaText("song")
    setTextFont("song", "comic-sans-ms.ttf");
    makeLuaText("version", "Backyard Re-Run v1.5", 1050, 10, 690)
    setTextAlignment("version", "left")
    addLuaText("version")
    setTextFont("version", "comic-sans-ms.ttf");

    makeLuaText("engineText", "Psych Engine 0.6.2", 1250, 10, 690)
    setTextAlignment("engineText", "right")
    addLuaText("engineText")
    setTextFont("engineText", "comic-sans-ms.ttf");

    setTextFont('timeTxt', 'comic-sans-ms.ttf');
    setTextFont("scoreTxt", 'comic-sans-ms.ttf');
end