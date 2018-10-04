bin = {0: '\'b00', 1: '\'b01', 2: '\'b10', 3: '\'b11'}


class Elevator:
	def __init__(self, n, p):
		self.id = n
		self.f_idle = p
		self.f_now = p
		self.selected_f = [0, 0, 0, 0]
		self.direction = None
		self.t = 1

	def __repr__(self):
		return 'id:{}	piso_a:{}	dir:{}	marcados:{}	t:{}'.format(self.id, self.f_now, self.direction, self.selected_f, self.t)

	def move(self):
		if self.t == 0:
			if self.direction == "Up":
					if self.f_now != 3:
						self.f_now += 1
						self.t = 2
			elif self.direction == 'Down':
					if self.f_now != 0:
						self.f_now -= 1
						self.t = 2
			else:  # Estado None
				if self.selected_f == [0, 0, 0, 0]:
					self.selected_f[self.f_idle] = 1
				self.go()
		else:
			self.t -= 1

	def go(self): #Pasa si estoy en "None"
		if self.f_now == 0:	#Revisar
			self.direction = "Up"
		elif self.f_now == 3:
			self.direction = "Down"
		else:
			if self.selected_f[self.f_now + 1] == 1:
				self.direction = "Up"
			elif self.selected_f[self.f_now - 1] == 1:
				self.direction = "Down"
			else:
				if (self.f_now - self.selected_f.index(1)) > 0:
					self.direction = "Down"
				else:
					self.direction = "Up"


	def check(self):
		if self.selected_f[self.f_now] == 1:
			self.selected_f[self.f_now] = 0
			self.direction = None
			self.t = 3

	def add_req(self, floor, direction):
		l = self.f_now - floor  # l > 0, asensor debería bajar, l < 0, asensor debería suba (Para llegar a mi)
		if self.direction == direction or self.selected_f == [0, 0, 0, 0]:
			if direction == 'Up':
				if l <= 0:  # Si debe subir para buscarme o ya está acá y yo voy para arriba.
					return abs(l), True
				else:
					return abs(
						l), None  # Si debe bajar para buscarme o y está subiendo (Igual podría marcarlo para después)
			else:
				if l >= 0:  # Si debe bajar para buscarme o ya está acá y yo voy para abajo.
					return abs(l), True
				else:
					if self.selected_f == [0, 0, 0, 0]:
						return abs(l), True
					else:
						return abs(
							l), None  # Si debe subir para buscarme y está bajando (Igual podría marcarlo para después)
		else:
			if l > 0 and direction == "Up":  # Si debe bajar para buscarme, pero yo quiero subir
				if 1 in self.selected_f[floor:]:
					return abs(l), False  # Si hay algún piso marcado bajo el mio, no puede marcar
				else:
					return abs(l), True
			elif l < 0 and direction == "Down":  # Si debe subir para buscarme, pero yo quiero bajar
				if 1 in self.selected_f[:floor]:
					return abs(l), False  # Si hay algún piso marcado sobre el mio, no puede marcar
				else:
					return abs(l), True
			else:
				return abs(l), None


class Building:
	def __init__(self, idles):  # idles = list with each elevator idle floor in the simulation
		self.elevators = []
		self.dic_el = {}
		for i in range(len(idles)):
			el = Elevator(i, idles[i])
			self.elevators.append(el)
			self.dic_el[el.id] = el

	def request_elevator(self, floor, direction):
		lista = []
		for i in self.elevators:
			r = i.add_req(floor, direction)
			lista.append((r[0], r[1], i.id))  # Cambiar i.id a i
		lista.sort()  # distancia, True
		print(lista)
		if 'True' in lista[0]:
			return lista[0][2]  # Si el primero tiene la menor distancia y es True, lo asigno
		else:
			for i in lista:
				if True in i:
					return i[2]
			for i in lista:
				if None in i:
					return i[2]
			return lista[0]

	def run(self, requests):
		t = len(requests)
		while t != 0:
			print(t)
			for i in self.elevators:
				i.move()
				i.check()
				print('		', i)
			x = requests[-t]
			if x != 0:
				print(x)
				r = self.request_elevator(x[0], x[1])  # floor, direction
				print('Seleccionado:	', r)
				self.dic_el[r].selected_f[x[0]] = 1

			t -= 1


idles = [3, 1]
Ed = Building(idles)
requests = [(0, "Up"), (1, "Up"), (2, "Up"), (3, "Down"), (0, "Up"), 0, 0, 0, 0, 0, (3, "Down"), 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]  # floor, direction
Ed.run(requests)
