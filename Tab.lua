--tab
local component = require("component")
local term = require("term")
local event = require("event")
local m = component.modem
term.clear()
print("--------------------------------------------------------------")
print("|Движение: Вперёд= ↑; Назад = ↓; Вниз = ctrl; Вверх = shift; |")
print("|Поворот: Влево = ←; Вправо →; Выход из программы = '0'      |")
print("|Shell = 'O' - передать аргумент shell робота;               |")
print("|Левый клик: Вперёд = space; Вверх = 'E'; Вниз = 'D'         |")
print("|Правый клик: Вперёд = enter; Вверх = 'W'; Вниз = 'S'        |")
print("|Взять лут спереди = 'G'; Бросить лут = 'H'                  |")
print("|Сворачивание окна планшета для слежения за роботом = 'R'    |")
print("|By http://vk.com/sharpsalat  for  http://computercraft.ru/  |")
print("--------------------------------------------------------------")
m.open(23)
screen = 1
while true do
    _,_,key1,key2 = event.pull("key_down")
    z = key2  
    print(z)
    if (z==19) then
		if (screen==1) then
			term.clear()
			component.gpu.setResolution(2,2) 
			screen = 0
		else 
			component.gpu.setResolution(80,25)
            print("--------------------------------------------------------------")
            print("|Движение: Вперёд= ↑; Назад = ↓; Вниз = ctrl; Вверх = shift; |")
            print("|Поворот: Влево = ←; Вправо →; Выход из программы = '0'      |")
            print("|Shell = 'O' - передать аргумент shell робота;               |")
            print("|Левый клик: Вперёд = space; Вверх = 'E'; Вниз = 'D'         |")
            print("|Правый клик: Вперёд = enter; Вверх = 'W'; Вниз = 'S'        |")
			print("|Взять лут спереди = 'G'; Бросить лут = 'H'                  |")
			print("|Сворачивание окна планшета для слежения за роботом = 'R'    |")
            print("|By http://vk.com/sharpsalat  for  http://computercraft.ru/  |")
            print("--------------------------------------------------------------")
			screen = 1
		end
	end
        if (z==200) then
			m.broadcast(66, "f")
        elseif (z==208) then
			m.broadcast(66, "b")
        elseif (z==203) then
			m.broadcast(66, "l")
        elseif (z==205) then
			m.broadcast(66, "r")
        elseif (z==42) then
			m.broadcast(66, "u")
        elseif (z==29) then
			m.broadcast(66, "d")
        elseif (z==57) then
			m.broadcast(66, "swing")
        elseif (z==28) then
			m.broadcast(66, "use")
        elseif (z==17) then
			m.broadcast(66, "useup")
        elseif (z==31) then
			m.broadcast(66, "usedown")
        elseif (z==18) then
			m.broadcast(66, "swingup")
        elseif (z==32) then
			m.broadcast(66, "swingdown")
		elseif (z==34) then
			m.broadcast(66,"suck")
		elseif (z==35) then
			m.broadcast(66,"drop")
		elseif (z==33) then
			m.broadcast(66,"fuel")
        elseif (z==11) then
			m.broadcast(66,"exit")
			shell.execute("sh")        
        elseif (z==24) then
			m.broadcast(66,"shell")
			os.sleep(1)
			print("shell:")
			shellr = io.read()
			m.broadcast(66,shellr)
        end		
end
