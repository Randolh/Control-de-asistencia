Funcion num = solicitar_entero(msg)
	Definir num Como Entero
	Escribir msg
	Leer num
FinFuncion

Funcion valido = validar_cantidad(num)
	Definir valido Como Logico
	valido = Verdadero
	
	Si num <= 0 Entonces
		Escribir "Debes ingresar un numero mayor a 0"
		valido = Falso
	FinSi
FinFuncion

funcion valida = validar_asistencia(asistencia)
	Definir valida Como Logico
	valida = Falso
	
	Si asistencia = 0 O asistencia = 1 Entonces
		valida = Verdadero
	FinSi
FinFuncion

Algoritmo control_de_asistencia
	Definir i, estudiantes, asis_temp, asistentes, ausentes Como Entero
	Definir validacion, validar_estudiantes Como Logico
	Definir salir Como Caracter
	
	Mientras salir <> "x" Hacer
		Limpiar Pantalla
		
		Repetir
			estudiantes = solicitar_entero("Ingrese la cantidad de estudiantes:")
			validar_estudiantes = validar_cantidad(estudiantes)
		Hasta Que validar_estudiantes
		
		Para i = 1 Hasta estudiantes Con Paso 1 Hacer
			Repetir
				Escribir "------ Estudiante #", i, " ------"
				Escribir "1 = asistió"
				Escribir "0 = no asistió"
				
				asis_temp = solicitar_entero("Ingrese el valor de la asistencia:")
				validacion = validar_asistencia(asis_temp)
				
				Si validacion Entonces
					Si asis_temp = 1 Entonces
						asistentes = asistentes + 1
					SiNo
						ausentes = ausentes +1
					FinSi
				SiNo
					Escribir "Ingrese un valor valido (0, 1)..."
				FinSi
			Hasta Que validacion
		Fin Para
		
		Limpiar Pantalla
		Escribir "Total Estudiantes: ", estudiantes
		Escribir "Asistentes: ", asistentes
		Escribir "Ausentes: ", ausentes
		Escribir ""
		
		Escribir "Ingresa x si deseas salir del sistema, presiona enter para reiniciar..."
		Leer salir
	Fin Mientras
	
FinAlgoritmo