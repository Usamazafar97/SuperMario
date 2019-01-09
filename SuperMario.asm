.model small
.stack 4096
.data

coinCount dw 0
stageCount dw 0

Stage db "Level : ",'$'
LevelComplete db "Level Complete",'$'
YouWin db "You Win",'$'
YouLose db "You Lose",'$'
WellCome db "WellCome To Super Mario",'$'
Developer0 db " Developed By",'$'
Developer2 db " Usama Zafar",'$'
AnyKey db "Press any key to continue.....",'$'
stringCount db "01234567",'$'
StringCoinsCount db "Coins :",'$'

coin1Chk byte 0
coin2Chk byte 0

x_quad word 0
y_quad word 0
width_quad word 0
height_quad word 0
color_quad byte 0
pixel_x word 0
pixel_y word 0
pixel_color word 0
pepsi_x word 5
pepsi_y word 184

pillar_x word 60
pillar_y word 168

pillar2_x word 159
pillar2_y word 154

enemy1_x word 135
enemy1_y word 184
enemy2_x word 200
enemy2_y word 184

coin1_x word 69
coin1_y word 150
coin2_x word 169
coin2_y word 140

monster_x word 0
monster_y word 10
mcheck byte 0

bomb_x word 0
bomb_y word 0
bomb1 word 0
bomb2 word 0
bomb_check byte 0

check1 byte 0
check2 byte 0

kingdom_x word 300
kingdom_y word 162

level byte 1

cloud_x word 160
cloud_y word 80


cloud   db  11,11,11,11,11,11,11,11,11,11,11,11,0 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db	11,11,11,11,11,11,11,11,11,11,0 ,0 ,15,0 ,0 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db	11,11,11,11,11,11,11,11,11,0 ,15,15,15,15,15,0 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db	11,11,11,11,11,11,11,11,0 ,15,15,15,15,15,15,15,0 ,11,11,11,11,11,11,11,11,11,11,11,11,11
		db	11,11,11,11,11,11,0 ,0 ,15,15,15,15,15,15,15,15,15,0 ,11,11,11,11,11,11,11,11,11,11,11,11
		db	11,11,11,11,11,0 ,15,15,15,15,15,15,15,15,15,15,15,0 ,11,11,11,11,11,11,11,11,11,11,11,11
		db	11,11,11,11,0 ,15,15,15,15,15,15,15,15,15,15,15,15,15,0 ,11,11,11,11,11,11,11,11,11,11,11
		db	11,11,11,11,0 ,15,15,15,15,15,15,15,15,15,15,15,15,15,0 ,11,11,11,11,11,11,11,11,11,11,11
		db	11,11,11,0 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0 ,0 ,0 ,0,11,11,11,11,11,11,11
		db	11,0 ,0 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0 ,11,11,11,11,11,11
		db	0 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0 ,11,11,11,11,11
		db	0 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0 ,11,11,11,11
		db	11,0 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0 ,0 ,0 ,0
		db	11,11,0 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0
		db	11,11,11,0 ,0 ,0 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0
		db	11,11,11,11,11,11,0 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0,11
		db	11,11,11,11,11,11,0 ,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0,0,11,11
		db	11,11,11,11,11,11,11,0 ,15,15,15,15,15,15,15,15,15,15,11,11 ,11 ,11 ,15,15,15,0,11,11,11,11
		db	11,11,11,11,11,11,11,0 ,15,15,15,11 ,15,15,15,15,15,15,11,15,15,15,15,0,0,11,11,11,11,11
		db	11,11,11,11,11,11,11,11,0 ,15,15,15,11,11,11,11,11,11,11,11,11,15,0,11,11,11,11,11,11,11
		db	11,11,11,11,11,11,11,11,11,0 ,15,15,11 ,11 ,11 ,11 ,11 ,11 ,15,15,15,15,0,11,11,11,11,11,11,11
		db	11,11,11,11,11,11,11,11,11,11,0 ,15,11,11,11 ,11,11,15,15,0,0,0,11,11,11,11,11,11,11,11
		db	11,11,11,11,11,11,11,11,11,11,11,0 ,15,15,15,0,0,0,0,11,11,11,11,11,11,11,11,11,11,11
		db	11,11,11,11,11,11,11,11,11,11,11,11,0 ,0,0,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11

bomb db 11,11,11,11,11,0,0,0,11,11,11,11,11
	 db 11,11,11,0,0,0,0,0,0,0,11,11,11
	 db 11,11,0,0,0,0,0,0,0,0,0,11,11
	 db	11,0,0,0,0,0,0,0,0,0,0,0,11
	 db	11,0,0,0,0,0,0,0,0,0,0,0,11
	 db	0,0,0,0,0,0,0,0,0,0,0,0,0
	 db	0,0,0,0,0,0,0,0,0,0,0,0,0
	 db	0,0,0,0,0,0,0,0,0,0,0,0,0
	 db	11,0,0,0,0,0,0,0,0,0,0,0,11
	 db	11,0,0,0,0,0,0,0,0,0,0,0,11
	 db 11,11,0,0,0,0,0,0,0,0,0,11,11
	 db 11,11,11,0,0,0,0,0,0,0,11,11,11
	 db 11,11,11,11,11,0,0,0,11,11,11,11,11
	 
		
monster db 11,11,11,11,0 ,0 ,0 ,11,11,11,0 ,0 ,0 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db 11,11,11,0 ,9 ,9 ,9 ,0 ,0 ,0 ,9 ,9 ,0 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db 11,11,0 ,0 ,0 ,9 ,9 ,9 ,9 ,0 ,9 ,9 ,9 ,0 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db 11,0 ,9 ,9 ,0 ,0 ,9 ,9 ,9 ,9 ,0 ,9 ,9 ,9 ,0 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db 0 ,9 ,9 ,9 ,9 ,9 ,0 ,9 ,9 ,9 ,9 ,9 ,9 ,9 ,0 ,0 ,11,11,11,11,11,11,11,11,11,11,11,11,11
		db 11,0 ,9 ,9 ,9 ,9 ,9 ,9 ,9 ,9 ,9 ,0 ,0 ,0 ,0 ,15,0 ,11,11,11,11,11,11,11,11,11,11,11,11
		db 11,0 ,0 ,0 ,9 ,9 ,9 ,9 ,9 ,9 ,0 ,2 ,10,0 ,15,15,15,0 ,11,11,11,11,11,11,11,11,11,11,11
		db 11,0 ,9 ,9 ,0 ,9 ,9 ,9 ,9 ,0 ,2 ,10,10,0 ,15,15,0 ,0 ,11,11,11,11,11,11,11,11,11,11,11
		db 0 ,9 ,9 ,9 ,9 ,9 ,9 ,9 ,9 ,0 ,2 ,10,10,0 ,15,15,0 ,0 ,11,11,11,11,11,11,11,11,11,11,11
		db 11,0 ,0 ,9 ,9 ,9 ,9 ,9 ,0 ,2 ,10,10,10,0 ,15,15,0 ,0 ,11,11,11,11,11,11,11,11,11,11,11
		db 11,11,11,0 ,9 ,9 ,9 ,9 ,0 ,2 ,10,10,10,0 ,0 ,15,0 ,14,0 ,0 ,11,11,11,11,11,11,11,11,11
		db 11,11,0 ,9 ,9 ,9 ,9 ,9 ,0 ,2 ,10,10,10,10,0 ,0 ,14,14,14,14,0 ,0 ,11,8 ,8 ,8 ,8 ,11,11
		db 11,11,11,0 ,9 ,9 ,9 ,0 ,0 ,0 ,2 ,10,0 ,0 ,14,14,14,14,14,0 ,14,14,8 ,12,12,12,12,8 ,11
		db 11,11,0 ,0 ,0 ,0 ,0 ,1 ,0 ,0 ,2 ,0 ,14,14,14,14,14,14,14,14,14,14,8 ,12,12,12,12,12,8
		db 11,0 ,15,15,15,0 ,15,15,1 ,0 ,0 ,0 ,14,14,14,14,14,14,14,0 ,0 ,0 ,8 ,7 ,12,12,12,12,8
		db 11,0 ,15,15,1 ,1 ,15,1 ,1 ,15,7 ,0 ,14,14,14,14,0 ,0 ,0 ,14,14,0 ,8 ,7 ,7 ,12,12,12,8
		db 11,0 ,15,1 ,1 ,1 ,1 ,1 ,1 ,1 ,15,7 ,0 ,14,14,0 ,14,14,14,0 ,0 ,8 ,7 ,7 ,7 ,7 ,12,12,8
		db 11,11,0 ,1 ,1 ,1 ,1 ,1 ,1 ,1 ,15,7 ,0 ,14,14,14,14,14,0 ,15,8 ,7 ,7 ,7 ,8 ,8 ,8 ,8 ,11
		db 11,11,0 ,1 ,15,15,1 ,1 ,1 ,1 ,15,7 ,0 ,0 ,0 ,0 ,0 ,0 ,15,8 ,7 ,7 ,7 ,8 ,11,11,11,11,11
		db 11,0 ,1 ,1 ,15,1 ,1 ,1 ,1 ,1 ,15,7 ,0 ,14,0 ,15 ,15 ,15 ,8 ,7 ,7 ,7 ,8 ,11,11,11,11,11
		db 11,11,0 ,1 ,1 ,1 ,15,15,1 ,15,7 ,8 ,0 ,14,14,14,0 ,0 ,8 ,7 ,7 ,7 ,8 ,11,11,11,11,11,11
		db 11,0 ,15,15,1 ,1 ,15,1 ,1 ,15,7 ,8 ,0 ,14,14,14,14,8 ,7 ,7 ,7 ,8 ,11,11,11,11,11,11,11
		db 11,0 ,15,1 ,1 ,1 ,1 ,1 ,15,7 ,8 ,8 ,14,14,14,14,14,8 ,7 ,8 ,11,11,11,11,11,11,11,11,11
		db 11,11,0 ,1 ,1 ,1 ,1 ,15,15,7 ,8 ,14,8 ,14,14,14,14,14,8 ,11,11,11,11,11,11,11,11,11,11
		db 11,11,0 ,15,15,15,15,7 ,7 ,8 ,14,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,11,11,11,11,11,11,11,11,11,11
		db 11,11,0 ,15,15,15,15,8 ,8 ,14,14,14,8 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db 11,11,11,8 ,8 ,8 ,8 ,14,14,14,14,14,8 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db 11,11,11,8 ,14,8 ,14,14,14,14,14,8 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db 11,11,8 ,14,14,14,8 ,8 ,14,14,14,14,8 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db 11,8 ,14,14,14,8 ,8 ,14,14,14,14,14,7 ,7 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db 11,11,8 ,8 ,8 ,15,8 ,14,14,14,14,14,15,15,7 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11
		db 11,11,11,11,11,11,11,7 ,7 ,7 ,7 ,7 ,7 ,7 ,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11


coin1   db 11,11,14,14,14,14,11,11
	db 11,14,14,14,14,14,14,11
	db 11,14,14,6 ,6 ,14,14,11
	db 14,14,6 ,14,14,0 ,14,14
	db 14,14,6 ,14,14,0 ,14,14
	db 14,14,6 ,14,14,0 ,14,14
	db 14,14,6 ,14,14,0 ,14,14
	db 11,14,14,0 ,0 ,14,14,11
	db 11,14,14,14,14,14,14,11
	db 11,11,14,14,14,14,11,11 

coin2   db 11,11,14,14,14,14,11,11
	db 11,14,14,14,14,14,14,11
	db 11,14,14,6 ,6 ,14,14,11
	db 14,14,6 ,14,14,0 ,14,14
	db 14,14,6 ,14,14,0 ,14,14
	db 14,14,6 ,14,14,0 ,14,14
	db 14,14,6 ,14,14,0 ,14,14
	db 11,14,14,0 ,0 ,14,14,11
	db 11,14,14,14,14,14,14,11
	db 11,11,14,14,14,14,11,11 

pepsi db 11,11,11,4,4,4,4,4,4,11,11,11,11
	db 11,11,4,4,4,4,4,4,4,4,4,4,11
	db 11,11,6,6,6,15,15,15,0,15,11,11,11
	db 11,6,15,6,15,15,15,15,0,15,15,15,11
	db 11,6,15,6,6,15,15,15,15,0,15,15,15
	db 11,6,6,15,15,15,15,15,0,0,0,0,11
	db 11,11,11,15,15,15,15,15,15,15,15,11,11
	db 11,11,4,4,1,4,4,4,4,11,11,11,11
	db 11,4,4,4,1,4,4,1,4,4,4,11,11
	db 4,4,4,4,1,1,1,1,4,4,4,4,11
	db 15,15,4,1,14,1,1,14,1,4,15,15,11
	db 15,15,15,1,1,1,1,1,1,15,15,15,11
	db 15,15,1,1,1,1,1,1,1,1,15,15,11
	db 11,11,1,1,1,11,11,1,1,1,11,11,11
	db 11,6,6,6,11,11,11,11,6,6,6,11,11
	db 6,6,6,6,11,11,11,11,6,6,6,6,11
	
enemy db 11,11,11,11,11,11,6,6,6,6,11,11,11,11,11,11
	db 11,11,11,11,11,6,6,6,6,6,6,11,11,11,11,11
	db 11,11,11,11,6,6,6,6,6,6,6,6,11,11,11,11
	db 11,11,11,6,6,6,6,6,6,6,6,6,6,11,11,11
	db 11,11,6,0,0,6,6,6,6,6,6,0,0,6,11,11
	db 11,6,6,6,15,0,6,6,6,6,0,15,6,6,6,11
	db 11,6,6,6,15,0,0,0,0,0,0,15,6,6,6,11
	db 6,6,6,6,15,0,15,6,6,15,0,15,6,6,6,6
	db 6,6,6,6,15,15,15,6,6,15,15,15,6,6,6,6
	db 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
	db 11,6,6,6,6,15,15,15,15,15,15,6,6,6,6,11 
	db 11,11,11,11,15,15,15,15,15,15,15,15,11,11,11,11
	db 11,11,0,0,15,15,15,15,15,15,15,15,0,0,11,11
	db 11,0,0,0,0,0,15,15,15,15,0,0,0,0,0,11
	db 11,0,0,0,0,0,0,15,15,0,0,0,0,0,0,11
	db 11,11,0,0,0,0,0,15,15,0,0,0,0,0,11,11
	
	kingdom         db 11,11,11,11,11,11,11,11,0 ,0 ,0 ,0 ,0 ,0 ,11,11,11
		db 11,11,11,11,11,11,11,11,0 ,0 ,0 ,0 ,0 ,0 ,11,11,11
		db 11,11,11,11,11,11,11,11,0 ,0 ,0 ,0 ,0 ,11,11,11,11
		db 11,11,11,11,11,11,11,11,0 ,0 ,0 ,0 ,0 ,11,11,11,11
		db 11,11,11,11,11,11,11,11,0 ,0 ,0 ,0 ,11,11,11,11,11
		db 11,11,11,11,11,11,11,11,0 ,0 ,0 ,0 ,11,11,11,11,11
		db 11,11,11,11,11,11,11,11,0 ,11,11,11,11,11,11,11,11
		db 11,11,11,11,11,11,11,11,0 ,11,11,11,11,11,11,11,11
		db 11,11,0 ,0 ,0 ,11,0 ,0 ,0 ,0 ,0 ,11,0 ,0 ,0 ,11,11
		db 11,11,0 ,0 ,0 ,11,0 ,0 ,0 ,0 ,0 ,11,0 ,0 ,0 ,11,11
		db 11,11,0 ,8 ,0 ,11,0 ,8 ,8 ,8 ,0 ,11,0 ,8 ,0 ,11,11
		db 11,11,0 ,8 ,0 ,11,0 ,8 ,8 ,8 ,0 ,11,0 ,8 ,0 ,11,11
		db 11,11,0 ,8 ,0 ,0 ,0 ,8 ,8 ,8 ,0 ,0 ,0 ,8 ,0 ,11,11
		db 11,11,0 ,8 ,0 ,0 ,0 ,8 ,8 ,8 ,0 ,0 ,0 ,8 ,0 ,11,11
		db 11,11,0 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,0 ,11,11
		db 11,11,0 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,0 ,11,11
		db 11,11,0 ,8 ,8 ,0 ,0 ,8 ,8 ,8 ,0 ,0 ,8 ,8 ,0 ,11,11
		db 11,11,0 ,8 ,8 ,0 ,0 ,8 ,8 ,8 ,0 ,0 ,8 ,8 ,0 ,11,11
		db 0 ,0 ,0 ,0 ,8 ,0 ,0 ,8 ,8 ,8 ,0 ,0 ,8 ,0 ,0 ,0 ,0
		db 0 ,0 ,0 ,0 ,8 ,0 ,0 ,8 ,8 ,8 ,0 ,0 ,8 ,0 ,0 ,0 ,0
		db 0 ,8 ,8 ,0 ,8 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,8 ,0 ,8 ,8 ,0
		db 0 ,8 ,8 ,0 ,8 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,8 ,0 ,8 ,8 ,0
		db 0 ,8 ,8 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,8 ,8 ,0
		db 0 ,8 ,8 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,8 ,0
		db 0 ,8 ,8 ,8 ,8 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,8 ,8 ,8 ,8 ,0
		db 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0
		
pillar db   0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0
		db	0 ,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0
		db	0 ,2 ,2 ,2 ,2 ,2 ,10,10,10,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0
		db	11,11,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,11,11

pillar2 db   0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0
		db	0 ,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0
		db	0 ,2 ,2 ,2 ,2 ,2 ,10,10,10,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,10,0
		db	0 ,10,10,10,2 ,2 ,10,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,10,0
		db	0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0
		db	11,11,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2,10,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,2 ,10,0 ,11,11
		db	11,11,0 ,10,10,10,2 ,2 ,10,10,10,10,2 ,10,10,2 ,2 ,2 ,2 ,2 ,2 ,2 ,2 ,10,2 ,10,10,0 ,11,11
		db	11,11,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,11,11
.code
;;;;;;set Background Color;;;;;;;;;
Background macro color
pusha
mov ah,06h	     
mov al,0
mov cx,0
mov dh,128
mov dl,128
mov bh,color		;colour of rectangle
int 10h
popa
endm

;;;;;;;;;;;pixel coordinate and color;;;;;;
pixel macro x_axis,y_axis,color
push dx
push cx
mov ah,0ch
mov cx,x_axis
mov dx,y_axis
mov al,color
int 10h
pop cx
pop dx
endm
;;;;;;;;;;Drawing Pepsi Character;;;;;;;;;;;;;;;;;
DrawPepsi proc
	mov cx,16
	mov bx,0
	mov bx,pepsi_y
	mov si,0
	pepsi_row:
		mov dx,0
		mov dx,pepsi_x
		push cx
		mov cx,13
		pepsi_col:
			push cx
			pixel dx,bx,pepsi[si] 
			pop cx
			inc dx
			inc si
		loop pepsi_col
		pop cx
		inc bx
	loop pepsi_row
	ret
DrawPepsi endp

;;;;;;;;;;Drawing cloud;;;;;;;;;;;;;;;;;
DrawCloud proc
	mov cx,24
	mov si,0
	cloud_row:
		push dx
		push cx
		mov cx,30
		cloud_col:
			push cx
			pixel dx,bx,cloud[si] 
			pop cx
			inc dx
			inc si
		loop cloud_col
		pop cx
		inc bx
		pop dx
	loop cloud_row
	ret
DrawCloud endp

;;;;;;;;;;;;Drawing Pillar;;;;;;;;;;;;;;;;
DrawPillar proc
	mov cx,32
	mov si,0
	pillar_row:
		push dx
		push cx
		mov cx,30
		pillar_col:
			push cx
			pixel dx,bx,pillar[si] 
			pop cx
			inc dx
			inc si
		loop pillar_col
		pop cx
		inc bx
		pop dx
	loop pillar_row
	ret
DrawPillar endp

;;;;;;;;;;;;Drawing Pillar2;;;;;;;;;;;;;;;;
DrawPillar2 proc
	mov cx,46
	mov si,0
	pillar2_row:
		push dx
		push cx
		mov cx,30
		pillar2_col:
			push cx
			pixel dx,bx,pillar2[si] 
			pop cx
			inc dx
			inc si
		loop pillar2_col
		pop cx
		inc bx
		pop dx
	loop pillar2_row
	ret
DrawPillar2 endp

;;;;;;;;;;;;Drawing Enemy;;;;;;;;;;;;;;;;
DrawEnemy proc
	mov cx,16
	mov si,0
	enemy_row:
		push dx
		push cx
		mov cx,16
		enemy_col:
			push cx
			pixel dx,bx,enemy[si] 
			pop cx
			inc dx
			inc si
		loop enemy_col
		pop cx
		inc bx
		pop dx
	loop enemy_row
	ret
DrawEnemy endp
;;;;;;;;;;;;Drawing Kingdom;;;;;;;;;;;;;;;;
DrawKingdom proc
	mov cx,38
	mov si,0
	kingdom_row:
		push dx
		push cx
		mov cx,17
		kingdom_col:
			push cx
			pixel dx,bx,kingdom[si] 
			pop cx
			inc dx
			inc si
		loop kingdom_col
		pop cx
		inc bx
		pop dx
	loop kingdom_row
	ret
DrawKingdom endp
;;;;;;;;;;;;coin1;;;;;;;;;;;;;;;;
Drawcoin1 proc
	mov cx,10
	mov si,0
	coin1_row:
		push dx
		push cx
		mov cx,8
		coin1_col:
			push cx
			pixel dx,bx,coin1[si] 
			pop cx
			inc dx
			inc si
		loop coin1_col
		pop cx
		inc bx
		pop dx
	loop coin1_row
	ret
Drawcoin1 endp


;;;;;;;;;;;;coin2;;;;;;;;;;;;;;;;
Drawcoin2 proc
	mov cx,10
	mov si,0
	coin2_row:
		push dx
		push cx
		mov cx,8
		coin2_col:
			push cx
			pixel dx,bx,coin2[si] 
			pop cx
			inc dx
			inc si
		loop coin2_col
		pop cx
		inc bx
		pop dx
	loop coin2_row
	ret
Drawcoin2 endp


;;;;;;;;;;;;monster;;;;;;;;;;;;;;;;
Drawmonster proc
	mov cx,32
	mov si,0
	monster_row:
		push dx
		push cx
		mov cx,29
		monster_col:
			push cx
			pixel dx,bx,monster[si] 
			pop cx
			inc dx
			inc si
		loop monster_col
		pop cx
		inc bx
		pop dx
	loop monster_row
	ret
Drawmonster endp


;;;;;Drawing Shape;;;;;;
drawQuad proc 
mov dx,0
mov dx,y_quad

   mov bx,dx
   
   ; below loops drawiing sqaure of size 50x50
   mov cx,height_quad
   l2:
      mov si,cx
      mov cx,width_quad
      l3:
       add cx,x_quad
       mov ah,0ch
       mov al,color_quad
       int 10h
       sub cx,x_quad
      loop l3
	  mov cx,si
	  inc dx
   loop l2
ret
drawQuad endp

push_quad macro height,width,x,y,color

	mov height_quad,height			;getting height of quadrilateral

	mov width_quad,width			;getting width of quadrilateral

	mov x_quad,x				;getting x-axis of quadrilateral

	mov y_quad,y				;getting y-axis of quadrilateral

	mov color_quad,color			;getting color of quadrilateral

endm
DrawBomb proc
	mov dx,bomb_x
	add dx,29
	mov bomb1,dx
	mov bx,bomb_y
	add bx, 15
	mov bomb2,bx
	mov cx,13
	mov si,0
	bomb_row:
		push dx
		push cx
		mov cx,13
		bomb_col:
			push cx
			pixel dx,bx,bomb[si] 
			pop cx
			inc dx
			inc si
		loop bomb_col
		pop cx
		inc bx
		pop dx
	loop bomb_row
	ret
DrawBomb endp
	
;;;;;;;;;;;;FLAG;;;;;;;;;;;;;;;;;;
DrawFlag proc
	;;;;;;;Flag;;;;;;;;;;
	push_quad 40,47,260,10,2	;;;FLAG;;;			;height,width,x-axis,y-axis,color
	call drawQuad
	push_quad 190,5,310,10,1111b	;;;;POLE;;
	call drawQuad

	mov cx,15
	mov ax,285
	mov pixel_x,ax
	mov ax,14
	mov pixel_y,ax

	DrawMoon1:
		push cx
		pixel pixel_x,pixel_y,1111b
		inc pixel_x
		inc pixel_y
		pop cx
	loop DrawMoon1

	mov cx,15


	DrawMoon2:
		push cx
		pixel pixel_x,pixel_y,1111b
		dec pixel_x
		inc pixel_y
		pop cx
	loop DrawMoon2
	sub pixel_y,18
	sub pixel_x,4
	mov bx,pixel_y
	mov cx,8
	DrawStar1:
		push cx
		pixel pixel_x,pixel_y,1111b
		inc pixel_y
		pop cx
	loop DrawStar1
	mov pixel_y,bx
	add pixel_y,3
	sub pixel_x,3
	mov cx,8
	DrawStar2:
		push cx
		pixel pixel_x,pixel_y,1111b
		inc pixel_x
		pop cx
	loop DrawStar2
	ret
DrawFlag endp
                                                                ;Main;
main proc
mov ax,@data
mov ds,ax

mov ah,0	   ;start code for visual mode
mov al,13h
int 10h

call StringPrintWelcome
call TimerSec

start:
;;;;;;here we can change background colour of our game;;;;;;;;;;;;;;;;
Background 11

call StringPrintCount
call StringPrintStage

.if level>3
call StringPrintWin
.endif

.if level!=3
;;;;;;;;;calling procedure for displaying flag;;;;;;;;;;;;;
call DrawFlag
.endif

l1:
;;;;;;Marioooo;;;;;
call DrawPepsi

.if level>1
	.if coin1Chk == 0
		;;;;;;;coin1;;;;;;
		mov bx,coin1_y
		mov dx,coin1_x
		call Drawcoin1
	.endif
	.if coin2Chk == 0
		;;;;;;;coin2;;;;;;
		mov bx,coin2_y
		mov dx,coin2_x
		call Drawcoin2
	.endif
.endif

push ax
push bx

mov ax,coin1_x
mov bx,pepsi_x

.if ax==bx
	mov coin1Chk, 1
.endif
mov ax,coin2_x
mov bx,pepsi_x

.if ax==bx
	mov coin2Chk,1
.endif

pop ax
pop bx

.if level==3
;;;;;;;kingdom;;;;;;
mov bx,kingdom_y
mov dx,kingdom_x
call DrawKingdom

;;;;;;;monster;;;;;;
mov bx,monster_y
mov dx,monster_x
call Drawmonster
.if monster_x<290 && mcheck==0
	mov bx,0
	mov bx,monster_y
	mov cx,0
		.while cx<32
			push cx
			mov dx,monster_x
			mov cx,0
			.while cx<1
				pixel dx,bx,11
				inc dx
				inc cx
			.endw
			pop cx
			inc bx
			inc cx
		.endw
	call bomb_Move
	inc monster_x
.endif
.if monster_x==289
	mov al,1
	mov mcheck,al
.endif
.if monster_x==0
	mov al,0
	mov mcheck,al
.endif
.if monster_x>0 && mcheck==1
	mov bx,monster_y
	mov cx,0
		.while cx<32
			push cx
			mov dx,monster_x
			add dx,28
			mov cx,0
			.while cx<1
				pixel dx,bx,11
				inc dx
				inc cx
			.endw
			pop cx
			inc bx
			inc cx
		.endw
	call Bomb_Move
	dec monster_x
.endif


	
.endif

.if level>1
;;;;;;Enemy1;;;;
mov bx,enemy1_y
mov dx,enemy1_x
call DrawEnemy
mov bx,enemy2_y
mov dx,enemy2_x
call DrawEnemy
cmp check1,0
	jne goleft1
goright1:
	mov bx,enemy1_y
 mov cx,0
 .while cx<16
	push cx
	mov dx,enemy1_x
	mov cx,0
	.while cx<1
		pixel dx,bx,11
		inc dx
		inc cx
	.endw
	pop cx
	inc bx
	inc cx
.endw
call Timer
	inc enemy1_x
	cmp enemy1_x,145
		je goleft1
	mov check1,0
afterenemy1move:
	cmp check2,0
	jne goleft2
	goright2:	
		 mov bx,enemy2_y
		 mov cx,0
		 .while cx<16
			push cx
			mov dx,enemy2_x
			mov cx,0
			.while cx<1
				pixel dx,bx,11
				inc dx
				inc cx
			.endw
			pop cx
			inc bx
			inc cx
		.endw
		call Timer
		inc enemy2_x
		cmp enemy2_x,220
			je goleft2
		mov check2,0

afterenemy2move:
.endif

.if level>0
;;;;;;;cloud;;;;;;
mov bx,cloud_y
mov dx,cloud_x
call DrawCloud

;;;;;;;pillar1;;;;;;
mov bx,pillar_y
mov dx,pillar_x
call DrawPillar

;;;;;;;pilla2;;;;;;
mov bx,pillar2_y
mov dx,pillar2_x
call DrawPillar2

;;;;;;;pillar3;;;;;;
mov bx,pillar_y
mov dx,pillar_x
add dx,175
call DrawPillar
.endif

;call clearScreen
;call Timer

; checking whether a key is pressed or not
   mov ah,11h
   int 16h
   jnz checkey
   
   back:
 .if level>1  
Collision:
	;;;;;checking if enemy1 is before pepsi
   mov ax,enemy1_x
   add ax,16					
   cmp pepsi_x,ax
   je compare_y1
   collision1:		;;return here if condition in compare_y1 is not satisfied
   ;;;;;checking if pepsi is before enemy1
   mov ax,pepsi_x
   add ax,12
   cmp ax,enemy1_x
   je compare_y2
   collision2:		;;return here if condition in compare_y2 is not satisfied
   ;;;;;checking if enemy2 is before pepsi
   mov ax,enemy2_x
   add ax,16					
   cmp pepsi_x,ax
   je compare_y3
   collision3:		;;return here if condition in compare_y3 is not satisfied
   ;;;;;checking if pepsi is before enemy2
   mov ax,pepsi_x
   add ax,12
   cmp ax,enemy2_x
   je compare_y4		
   collision4:		;;return here if condition in compare_y4 is not satisfied
   ;;;;;;checking if pepsi is coming from upside and enemy is below;;;;
   push dx
   push cx
   push bx
   mov dx,pepsi_y
   add dx,15
   mov cx,pepsi_x
   sub cx,15
   mov bx,pepsi_x
   add bx,12
	.if  enemy1_x>cx && enemy1_y<dx && enemy1_x<=bx;pepsi_y==dx && pepsi_x>=cx && pepsi_x<=bx
		call StringPrintLose
	.endif
	pop bx
	pop cx
	pop dx
   ;;;;;;checking if pepsi is coming from upside and enemy is below;;;;
   push dx
   push cx
   push bx
   mov dx,pepsi_y
   add dx,15
   mov cx,pepsi_x
   sub cx,15
   mov bx,pepsi_x
   add bx,12
	.if  enemy2_x>cx && enemy2_y<dx && enemy2_x<=bx;pepsi_y==dx && pepsi_x>=cx && pepsi_x<=bx
		call StringPrintLose
	.endif
	pop bx
	pop cx
	pop dx
   ;;;;;checking collision of bomb with pepsi;;;;;;;
   push dx
   push cx
   push bx
   mov dx,bomb2
   add dx,12
   mov cx,bomb1
   sub cx,12
   mov bx,bomb1
   add bx,12
	.if  pepsi_x>cx && pepsi_y<dx && pepsi_x<=bx;pepsi_y==dx && pepsi_x>=cx && pepsi_x<=bx
		call StringPrintLose
	.endif
	pop bx
	pop cx
	pop dx
  .endif
   .if pepsi_x>300				;; going to next level
		inc level
		add stageCount,1
		mov ax,0
		mov pepsi_x,ax
		mov ax,184
		mov pepsi_y,ax
		call clear
		call StringPrint
		call TimerSec
		jmp start 
	.endif
cmp pepsi_x,1000
jne l1
checkey:
; clear procedures clear the screen
;call clear
; taking pressed key out of the buffer
 mov ah,10h
 int 16h
 ;In below all checks I am comparing scan codes of the up,down,left,right and esc keys
;checking Right key
 cmp ah,4dh
 jne n1
 .if pepsi_x<42 || pepsi_x>42 && pepsi_x<90 && pepsi_y<=152 || pepsi_x>=85 && pepsi_x<136 || pepsi_x>=139 && pepsi_x<=189 && pepsi_y<138 || pepsi_x>180 && pepsi_x<=216 || pepsi_x>214 && pepsi_x<=265 && pepsi_y<=152 || pepsi_x>260
 ;;;;;removing back trail;;;;
	 push ax
	 push bx
	 push cx
	 push dx
	 mov cx,0
	 mov bx,pepsi_y
	 .while cx<16
		push cx
		mov dx,pepsi_x
		mov cx,0
		.while cx<10
			pixel dx,bx,11
			inc dx
			inc cx
		.endw
		pop cx
		inc bx
		inc cx
	 .endw
	 mov ax,0
	 pop dx
	 pop cx
	 pop bx
	 pop ax
	 mov ax,pepsi_x
	 add ax,10
	 mov pepsi_x,ax
 .endif
 jmp back
 
 ;checking left key
 n1:
 cmp ah,4bh
 jne n2
 .if pepsi_x<47 || pepsi_x>42 && pepsi_x<96 && pepsi_y<=152 || pepsi_x>=97 && pepsi_x<160 || pepsi_x>=139 && pepsi_x<=195 && pepsi_y<138 || pepsi_x>191 && pepsi_x<=235 || pepsi_x>219 && pepsi_x<=265 && pepsi_y<=152 || pepsi_x>269
	mov cx,0
	mov bx,pepsi_y
	.while cx<16
		push cx
		mov dx,pepsi_x
		add dx,3
		mov cx,0
		.while cx<10
			pixel dx,bx,11
			inc dx
			inc cx
		.endw
		pop cx
		inc bx
		inc cx
	.endw
	mov ax,pillar_x
	add ax,30
	mov bx,pillar2_x
	add bx,30
	mov cx,ax
	add cx,175
	 mov ax,pepsi_x
	 sub ax,10
	 mov pepsi_x,ax
 .endif
 jmp back
 ;checking up key
 n2:
 cmp ah,48h
 jne n3
 .if pepsi_y>=0
	 mov bx,pepsi_y
	 add bx,6
	 mov cx,0
	 .while cx<10
		push cx
		mov dx,pepsi_x
		mov cx,0
		.while cx<13
			pixel dx,bx,11
			inc dx
			inc cx
		.endw
		pop cx
		inc bx
		inc cx
	.endw
	 mov dx,pepsi_y
	 sub dx,10
	 mov pepsi_y,dx
 .endif
 jmp back
 
 ;checking down key
 n3:
 cmp ah,50h
 jne n4
 .if (!(pepsi_y>=184) ) 
	.if pepsi_x<=47 || pepsi_x>42 && pepsi_x<96 && pepsi_y<=152 || pepsi_x>=97 && pepsi_x<160 || pepsi_x>=139 && pepsi_x<=195 && pepsi_y<138 || pepsi_x>191 && pepsi_x<=235 || pepsi_x>219 && pepsi_x<=265 && pepsi_y<=152 || pepsi_x>265
		 mov bx,pepsi_y
		 mov cx,0
		 .while cx<10
			push cx
			mov dx,pepsi_x
			mov cx,0
			.while cx<13
				pixel dx,bx,11
				inc dx
				inc cx
			.endw
			pop cx
			inc bx
			inc cx
		.endw
		 mov dx,pepsi_y
		 add dx,10
		 mov pepsi_y,dx
	.endif
 .endif
 jmp back
 
 ;checking esc key
 n4:
 cmp ah,01h
 jne exit
 
 .if level>1 
 ;;enemy move right
 
	
 goleft1:
	 mov bx,enemy1_y
	 mov cx,0
	 .while cx<16
		push cx
		mov dx,enemy1_x
		add dx,15
		mov cx,0
		.while cx<1
			pixel dx,bx,11
			inc dx
			inc cx
		.endw
		pop cx
		inc bx
		inc cx
	.endw
	call Timer
	dec enemy1_x
	cmp enemy1_x,90
		je goright1
	mov check1,1
	jmp afterenemy1move
 goleft2:
	 mov bx,enemy2_y
	 mov cx,0
	 .while cx<16
		push cx
		mov dx,enemy2_x
		add dx,15
		mov cx,0
		.while cx<1
			pixel dx,bx,11
			inc dx
			inc cx
		.endw
		pop cx
		inc bx
		inc cx
	.endw 
	call Timer
	dec enemy2_x
	cmp enemy2_x,187
		je goright2
	mov check2,1
	jmp afterenemy2move	
compare_y2:							;;checking collision if both pepsi and enemy1 are at same level
		mov bx,pepsi_y
		mov dx,enemy1_y
		sub dx,bx
		cmp dx,0
		call StringPrintLose
		jmp collision2
compare_y1:							;;checking collision if both pepsi and enemy1 are at same level
		mov bx,pepsi_y
		mov dx,enemy1_y
		sub dx,bx
		cmp dx,0
		call StringPrintLose
		jmp collision1
compare_y4:							;;checking collision if both pepsi and enemy2 are at same level
		mov bx,pepsi_y
		mov dx,enemy2_y
		sub dx,bx
		cmp dx,0
		call StringPrintLose
		jmp collision4
compare_y3:							;;checking collision if both pepsi and enemy2 are at same level
		mov bx,pepsi_y
		mov dx,enemy2_y
		sub dx,bx
		cmp dx,0
		call StringPrintLose		
		jmp collision3
		.endif
exit:
.exit
main endp

Bomb_Move proc
;;;;;;;;bomb;;;;;;;;
push ax
push bx
push cx
push dx
.if bomb_check==0
	mov ax, monster_x
	sub ax,10
	mov bomb_x,ax
	mov ax, monster_y
	add ax, 7
	mov bomb_y,ax
	mov al,1
	mov bomb_check,al
	call DrawBomb

mov ax,0
.else
	mov bx,0
	mov dx,0
	mov bx,bomb_y	;;removing trail;;
	add bx,10
	mov cx,0
	.while cx<6
	push cx
	mov dx,bomb_x
	add dx,29
	mov cx,0
	.while cx<13
		pixel dx,bx,11
		inc dx
		inc cx
	.endw
	pop cx
	inc bx
	inc cx
	.endw
	call DrawBomb
	;inc bomb_y
	
	.if bomb_y==175 ;|| bomb_x>=47 && bomb_x<90 || bomb_x>=147 && bomb_x<190 || bomb_x>=222 && bomb_x<265
		mov al,0
		mov bomb_check,al
		mov bx,0
		mov bx,bomb_y
		add bx,13
		 mov cx,0
		 .while cx<13
			push cx
			mov dx,bomb_x
			add dx,29
			mov cx,0
			.while cx<13
				pixel dx,bx,11
				inc dx
				inc cx
			.endw
			pop cx
			inc bx
			inc cx
		.endw
	.endif
.endif
inc bomb_y
inc bomb_y

pop dx
pop cx
pop bx
pop ax
ret
Bomb_Move endp

clear proc uses ax		;clear screen function
	mov ah,0
	mov al,13h
	int 10h
ret
clear endp

Timer proc
	mov cx,0000h
	mov dx,4240h
	mov ah,86h
	int 15h
ret
Timer endp


TimerSec proc
	mov cx,000fh
	mov dx,4240h
	mov ah,86h
	int 15h
ret
TimerSec endp

StringPrint proc
;;;;;;;;;;;;;;;;Cursor set and print character;;;;;;;;;;;;;;

;background 0
mov ah,02h				
mov dh,13 ;row number	
mov dl,14 ;colls number	
int 10h		

mov ah,09h
mov dx,offset LevelComplete
int 21h

ret
StringPrint endp

StringPrintWin proc
;;;;;;;;;;;;;;;;Cursor set and print character;;;;;;;;;;;;;;

background 0
mov ah,02h				
mov dh,14 ;row number	
mov dl,14 ;colls number	
int 10h		

mov ah,09h
mov dx,offset YouWin
int 21h

mov ah,4ch
int 21h
ret
StringPrintWin endp

StringPrintLose proc
;;;;;;;;;;;;;;;;Cursor set and print character;;;;;;;;;;;;;;

background 0
mov ah,02h				
mov dh,14 ;row number	
mov dl,14 ;colls number	
int 10h		

mov ah,09h
mov dx,offset YouLose
int 21h

mov ah,4ch
int 21h
ret
StringPrintLose endp

StringPrintWelcome proc
;;;;;;;;;;;;;;;;Cursor set and print character;;;;;;;;;;;;;;

background 0
mov ah,02h				
mov dh,7 ;row number	
mov dl,9 ;colls number	
int 10h		

mov ah,09h
mov dx,offset WellCome
int 21h
mov ah,02h				
mov dh,10 ;row number	
mov dl,7 ;colls number	
int 10h		

mov ah,09h
mov dx,offset AnyKey
int 21h

mov ah,02h				
mov dh,17 ;row number	
mov dl,20 ;colls number	
int 10h		

mov ah,09h
mov dx,offset Developer0
int 21h

mov ah,02h				
mov dh,20 ;row number	
mov dl,20
 ;colls number	
int 10h		

mov ah,09h
mov dx,offset Developer2
int 21h

mov ah,0
int 16h
ret
StringPrintWelcome endp

StringPrintCount proc
;;;;;;;;;;;;;;;;Cursor set and print character;;;;;;;;;;;;;;

mov ah,02h				
mov dh,0 ;row number	
mov dl,0 ;colls number	
int 10h		

mov ah,09h
mov dx,offset StringCoinsCount
int 21h

push si
push ax

mov si,coinCount

mov ah,02h				
mov dh,0 ;row number	
mov dl,7 ;colls number	
int 10h					
						
mov al,stringCount[si]	
mov bl,15				
						
mov cx,1				
mov ah,0ah				
int 10h

pop ax
pop si
ret
StringPrintCount endp

StringPrintStage proc
;;;;;;;;;;;;;;;;Cursor set and print character;;;;;;;;;;;;;;

mov ah,02h				
mov dh,0 ;row number	
mov dl,15 ;colls number	
int 10h		

mov ah,09h
mov dx,offset Stage
int 21h

push si
push ax

mov si,stageCount

mov ah,02h				
mov dh,0 ;row number	
mov dl,23 ;colls number	
int 10h					
						
mov al,stringCount[si]	
mov bl,15				
						
mov cx,1				
mov ah,0ah				
int 10h

pop ax
pop si
ret
StringPrintStage endp


end main
end