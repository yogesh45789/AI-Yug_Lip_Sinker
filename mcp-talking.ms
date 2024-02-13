clear
mainImage = file.loadImage("mcp.png")
gfx.drawImage mainImage, 480-mainImage.width/2, 320-mainImage.height/2

jawSprite = new Sprite
jawSprite.image = file.loadImage("mcp-jaw.png")
jawSprite.x = 541; jawSprite.y = 151
jawSprite2 = new Sprite
jawSprite2.image = jawSprite.image
jawSprite2.x = 411; jawSprite.y = 151
display(4).sprites = [jawSprite, jawSprite2]

list.swap = function(i,j)
	temp=self[i]
	self[i]=self[j]
	self[j]=tem
end function
c = jawSprite2.corners
c.swap(0,1); c.swap(2,3)  // (flips the image horizontally)
jawSprite2.setCorners c

openMouth = function(amount)
	c = jawSprite.corners
	dy = 32 * amount
	c[0][1] = c[1][1] - dy
	c[3][1] = c[2][1] - dy
	jawSprite.setCorners c
	c = jawSprite2.corners
	c[1][1] = c[0][1] - dy
	c[2][1] = c[3][1] - dy
	jawSprite2.setCorners c
end function

openMouth 1
