# 0 1 2
# 4 5 6
# 8 9 10

def pos(x, y):
	print(f"\tdta\t{x},{y},", end="")

def out(d):
	print(f"{d},", end="")

def fin():
	print(-1)

t = 230
from PIL import Image
with Image.open("sketchbw.png") as image:
	#print(image.size)
	#print(image.getpixel((71, 3)))
	x = 2
	y = 77
	pos(x, y)
	while True:
		#print(x, y)
		if image.getpixel((x, y - 1)) < t:
			y -= 1
			out(1)
		elif image.getpixel((x + 1, y - 1)) < t:
			x += 1
			y -= 1
			out(2)
		elif image.getpixel((x + 1, y)) < t:
			x += 1
			out(6)
		else:
			break
	fin()
	x = 57
	y = 3
	pos(x, y)
	while True:
		#print(x, y)
		if image.getpixel((x, y + 1)) < t:
			y += 1
			out(9)
		elif image.getpixel((x + 1, y + 1)) < t:
			x += 1
			y += 1
			out(10)
		elif image.getpixel((x - 1, y + 1)) < t:
			x -= 1
			y += 1
			out(8)
		else:
			break
	fin()
	x = 71
	y = 3
	pos(x, y)
	while True:
		#print(x, y)
		if image.getpixel((x + 1, y + 1)) < t:
			x += 1
			y += 1
			out(10)
		elif image.getpixel((x, y + 1)) < t:
			y += 1
			out(9)
		elif image.getpixel((x + 1, y)) < t:
			x += 1
			out(6)
		else:
			break
	fin()
