------Globals------
winx = 160
winy = 144
winscale = 4
colors = {
	{15, 56, 15},
	{48, 98, 48},
	{139, 172, 15},
	{155, 188, 15}
}

------Functions------
function ColorTest()
	love.graphics.push()
	for i=0,winx do
		for j=0,winy do
			love.graphics.setColor(colors[(i+j)%table.getn(colors)+1])
			love.graphics.rectangle("fill", i, j, 1, 1 )
		end
	end
	love.graphics.pop()
end

------Love-----
function love.load()
	love.graphics.setBackgroundColor( 155, 188, 15 )
	love.window.setMode(winx*winscale, winy*winscale)
end
 
function love.update(dt)
end
 
function love.draw()
	love.graphics.scale(winscale,winscale)
	ColorTest()
end