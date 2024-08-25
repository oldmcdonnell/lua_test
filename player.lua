local player = { x = 100, y = 100, speed = 200 }

function love.load()
    -- Load player image
    player.image = love.graphics.newImage("player.png")
end

function love.update(dt)
    if love.keyboard.isDown("up") then
        player.y = player.y - player.speed * dt
    elseif love.keyboard.isDown("down") then
        player.y = player.y + player.speed * dt
    end
    if love.keyboard.isDown("left") then
        player.x = player.x - player.speed * dt
    elseif love.keyboard.isDown("right") then
        player.x = player.x + player.speed * dt
    end
end

function love.draw()
    love.graphics.draw(player.image, player.x, player.y)
end
