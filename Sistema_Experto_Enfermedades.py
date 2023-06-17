import tkinter as tk
from tkinter import messagebox
from PIL import Image, ImageTk
import mysql.connector


# Conectar a la base de datos MySQL
db = mysql.connector.connect(
    host='localhost',
    user='root',
    password='',
    database='doctor'
)
# Obtener un cursor para ejecutar consultas
cursor = db.cursor()


#######################################################################
# Obtener las enfermedades y síntomas desde la base de datos
cursor.execute('SELECT * FROM enfermedades')
enfermedades = cursor.fetchall()

cursor.execute('SELECT * FROM sintomas')
sintomas = cursor.fetchall()

# Crear el diccionario base_conocimientos a partir de las filas de la base de datos
base_conocimientos = {}
for enfermedad in enfermedades:
    enfermedad_id = enfermedad[0]
    enfermedad_nombre = enfermedad[1]
    base_conocimientos[enfermedad_nombre] = {'enfermedad_id': enfermedad_id, 'sintomas': []}

# Insertar los síntomas en el diccionario base_conocimientos
for sintoma in sintomas:
    sintoma_id = sintoma[0]
    sintoma_nombre = sintoma[1]

    # Obtener la enfermedad asociada al síntoma
    cursor.execute('SELECT enfermedad_id FROM enfermedad_sintoma WHERE sintoma_id = %s', (sintoma_id,))
    enfermedad_id = cursor.fetchone()[0]

    # Agregar el síntoma a la enfermedad correspondiente en base_conocimientos
    for enfermedad_nombre, contenido in base_conocimientos.items():
        if contenido['enfermedad_id'] == enfermedad_id:
            contenido['sintomas'].append(sintoma_nombre)
            break



# Confirmar los cambios en la base de datos
db.commit()

# Cerrar la conexión y el cursor
cursor.close()
db.close()





def diagnosticar_sintomas():
    # Obtener los síntomas seleccionados por el usuario
    sintomas_usuario = []
    if fiebre_var.get():
        sintomas_usuario.append('fiebre')
    if tos_seca_var.get():
        sintomas_usuario.append('tos seca')
    if tos_mucosidad_var.get():
        sintomas_usuario.append('tos con mucosidad')
    if dificultad_respirar_var.get():
        sintomas_usuario.append('dificultad para respirar')
    if picazon_ojos_var.get():
        sintomas_usuario.append('picazón en los ojos')
    if estornudos_var.get():
        sintomas_usuario.append('estornudos')
    if tos_persistente_var.get():
        sintomas_usuario.append('tos persistente')
    if falta_aire_var.get():
        sintomas_usuario.append('falta de aliento')
    if opresion_pecho_var.get():
        sintomas_usuario.append('opresión en el pecho')
    if fatiga_var.get():
        sintomas_usuario.append('fatiga')
    if dolor_cabeza_var.get():
        sintomas_usuario.append('dolor de cabeza')
    if dolor_garganta_var.get():
        sintomas_usuario.append('dolor de garganta')
    if dolor_muscular_var.get():
        sintomas_usuario.append('dolor muscular o corporal')
    if congestion_nasal_var.get():
        sintomas_usuario.append('congestión nasal')
    if perdida_gusto_var.get():
        sintomas_usuario.append('pérdida del gusto o del olfato')
    if enrojecimiento_ojos_var.get():
        sintomas_usuario.append('enrojecimiento de los ojos')
    if picazon_var.get():
        sintomas_usuario.append('picazón')
    if lagrimeo_var.get():
        sintomas_usuario.append('lagrimeo')
    if dolor_facial_var.get():
        sintomas_usuario.append('dolor facial')
    if nausea_var.get():
        sintomas_usuario.append('náuseas')
    if vomitos_var.get():
        sintomas_usuario.append('vómitos')
    if dolor_abdominal_var.get():
        sintomas_usuario.append('dolor abdominal')
    if diarrea_var.get():
        sintomas_usuario.append('diarrea')
    if dolor_cabeza_intenso_var.get():
        sintomas_usuario.append('dolor de cabeza intenso')
    if sensibilidad_luz_var.get():
        sintomas_usuario.append('sensibilidad a la luz y al sonido')
    if dificultad_tragar_var.get():
        sintomas_usuario.append('dificultad para tragar')
    if dolor_oido_var.get():
        sintomas_usuario.append('dolor de oído')
    if dificultad_escuchar_var.get():
        sintomas_usuario.append('dificultad para escuchar')
    if picazon_piel_var.get():
        sintomas_usuario.append('picazón en la piel')
    if erupcion_cutanea_var.get():
        sintomas_usuario.append('erupción cutánea')
        

    
    # Diagnosticar las enfermedades correspondientes al síntoma seleccionado
    enfermedades_diagnosticadas = diagnosticar_enfermedades(sintomas_usuario)
    
    # Mostrar el resultado al usuario
    if enfermedades_diagnosticadas:
        messagebox.showinfo("Diagnóstico", "Las enfermedades posibles son: " + ", ".join(enfermedades_diagnosticadas))
    else:
        messagebox.showinfo("Diagnóstico", "No se encontraron enfermedades con el síntoma seleccionado.")


def diagnosticar_enfermedades(sintomas_usuario):
    enfermedades_diagnosticadas = []
    for enfermedad, detalles in base_conocimientos.items():
        sintomas_enfermedad = detalles['sintomas']
        if set(sintomas_usuario).issuperset(sintomas_enfermedad):
            enfermedades_diagnosticadas.append(enfermedad)
    return enfermedades_diagnosticadas

ventana = tk.Tk()
ventana.geometry("500x650")
ventana.title("Sistema Experto de Diagnóstico Médico")

# Cargar imagen de fondo
fondo_img = Image.open("background.jpg")
fondo_img = fondo_img.resize((800, 900), Image.LANCZOS)
fondo_tkimg = ImageTk.PhotoImage(fondo_img)
fondo_label = tk.Label(ventana, image=fondo_tkimg)
fondo_label.place(x=0, y=0)

# Variables para los síntomas
fiebre_var = tk.IntVar()
tos_seca_var = tk.IntVar()
tos_mucosidad_var = tk.IntVar()
dificultad_respirar_var = tk.IntVar()
picazon_ojos_var = tk.IntVar()
estornudos_var = tk.IntVar()
tos_persistente_var = tk.IntVar()
falta_aire_var = tk.IntVar()
opresion_pecho_var = tk.IntVar()
fatiga_var = tk.IntVar()
dolor_cabeza_var = tk.IntVar()
dolor_garganta_var = tk.IntVar()
dolor_muscular_var = tk.IntVar()
congestion_nasal_var = tk.IntVar()
perdida_gusto_var = tk.IntVar()
enrojecimiento_ojos_var = tk.IntVar()
picazon_var = tk.IntVar()
lagrimeo_var = tk.IntVar()
dolor_facial_var = tk.IntVar()
nausea_var = tk.IntVar()
vomitos_var = tk.IntVar()
dolor_abdominal_var = tk.IntVar()
diarrea_var = tk.IntVar()
dolor_cabeza_intenso_var = tk.IntVar()
sensibilidad_luz_var = tk.IntVar()
dificultad_tragar_var = tk.IntVar()
dolor_oido_var = tk.IntVar()
dificultad_escuchar_var = tk.IntVar()
picazon_piel_var = tk.IntVar()
erupcion_cutanea_var = tk.IntVar()

# Etiquetas
titulo_label = tk.Label(ventana, text="Sistema Experto de Diagnóstico Médico", font=("Arial", 16, "bold"), bg="red",
                        fg="black")
titulo_label.pack(pady=10)

sintomas_label = tk.Label(ventana, text="Selecciona los síntomas que presentas:", font=("Arial", 12), bg="black",
                          fg="white")
sintomas_label.pack()

# Checkboxes
fiebre_checkbox = tk.Checkbutton(ventana, text="Fiebre", variable=fiebre_var, font=("Arial", 10), bg="green")
fiebre_checkbox.pack(anchor='w')
tos_seca_checkbox = tk.Checkbutton(ventana, text="Tos seca", variable=tos_seca_var, font=("Arial", 10), bg="green")
tos_seca_checkbox.pack(anchor='w')
tos_mucosidad_checkbox = tk.Checkbutton(ventana, text="Tos con mucosidad", variable=tos_mucosidad_var, font=("Arial", 10),
                                        bg="green")
tos_mucosidad_checkbox.pack(anchor='w')
dificultad_respirar_checkbox = tk.Checkbutton(ventana, text="Dificultad para respirar", variable=dificultad_respirar_var,
                                             font=("Arial", 10), bg="green")
dificultad_respirar_checkbox.pack(anchor='w')
picazon_ojos_checkbox = tk.Checkbutton(ventana, text="Picazón en los ojos", variable=picazon_ojos_var,
                                       font=("Arial", 10), bg="green")
picazon_ojos_checkbox.pack(anchor='w')
estornudos_checkbox = tk.Checkbutton(ventana, text="Estornudos", variable=estornudos_var, font=("Arial", 10), bg="green")
estornudos_checkbox.pack(anchor='w')
tos_persistente_checkbox = tk.Checkbutton(ventana, text="Tos persistente", variable=tos_persistente_var,
                                          font=("Arial", 10), bg="green")
tos_persistente_checkbox.pack(anchor='w')
falta_aire_checkbox = tk.Checkbutton(ventana, text="Falta de aire", variable=falta_aire_var, font=("Arial", 10),
                                     bg="green")
falta_aire_checkbox.pack(anchor='w')
opresion_pecho_checkbox = tk.Checkbutton(ventana, text="Opresión en el pecho", variable=opresion_pecho_var,
                                         font=("Arial", 10), bg="green")
opresion_pecho_checkbox.pack(anchor='w')
fatiga_checkbox = tk.Checkbutton(ventana, text="Fatiga", variable=fatiga_var, font=("Arial", 10), bg="green")
fatiga_checkbox.pack(anchor='w')
dolor_cabeza_checkbox = tk.Checkbutton(ventana, text="Dolor de cabeza", variable=dolor_cabeza_var, font=("Arial", 10),
                                       bg="green")
dolor_cabeza_checkbox.pack(anchor='w')
dolor_garganta_checkbox = tk.Checkbutton(ventana, text="Dolor de garganta", variable=dolor_garganta_var,
                                         font=("Arial", 10), bg="green")
dolor_garganta_checkbox.pack(anchor='w')
dolor_muscular_checkbox = tk.Checkbutton(ventana, text="Dolor muscular o corporal", variable=dolor_muscular_var,
                                         font=("Arial", 10), bg="green")
dolor_muscular_checkbox.pack(anchor='w')
congestion_nasal_checkbox = tk.Checkbutton(ventana, text="Congestión nasal", variable=congestion_nasal_var,
                                           font=("Arial", 10), bg="green")
congestion_nasal_checkbox.pack(anchor='w')
perdida_gusto_checkbox = tk.Checkbutton(ventana, text="Pérdida del gusto o del olfato", variable=perdida_gusto_var,
                                        font=("Arial", 10), bg="green")
perdida_gusto_checkbox.pack(anchor='w')
enrojecimiento_ojos_checkbox = tk.Checkbutton(ventana, text="Enrojecimiento de los ojos", variable=enrojecimiento_ojos_var,
                                              font=("Arial", 10), bg="green")
enrojecimiento_ojos_checkbox.pack(anchor='w')
picazon_checkbox = tk.Checkbutton(ventana, text="Picazón", variable=picazon_var, font=("Arial", 10), bg="green")
picazon_checkbox.pack(anchor='w')
lagrimeo_checkbox = tk.Checkbutton(ventana, text="Lagrimeo", variable=lagrimeo_var, font=("Arial", 10), bg="green")
lagrimeo_checkbox.pack(anchor='w')
dolor_facial_checkbox = tk.Checkbutton(ventana, text="Dolor facial", variable=dolor_facial_var, font=("Arial", 10),
                                       bg="green")
dolor_facial_checkbox.pack(anchor='w')
nausea_checkbox = tk.Checkbutton(ventana, text="Náuseas", variable=nausea_var, font=("Arial", 10), bg="green")
nausea_checkbox.pack(anchor='w')
vomitos_checkbox = tk.Checkbutton(ventana, text="Vómitos", variable=vomitos_var, font=("Arial", 10), bg="green")
vomitos_checkbox.pack(anchor='w')
dolor_abdominal_checkbox = tk.Checkbutton(ventana, text="Dolor abdominal", variable=dolor_abdominal_var,
                                          font=("Arial", 10), bg="green")
dolor_abdominal_checkbox.pack(anchor='w')
diarrea_checkbox = tk.Checkbutton(ventana, text="Diarrea", variable=diarrea_var, font=("Arial", 10), bg="green")
diarrea_checkbox.pack(anchor='w')
dolor_cabeza_intenso_checkbox = tk.Checkbutton(ventana, text="Dolor de cabeza intenso",
                                               variable=dolor_cabeza_intenso_var, font=("Arial", 10), bg="green")
dolor_cabeza_intenso_checkbox.pack(anchor='w')
sensibilidad_luz_checkbox = tk.Checkbutton(ventana, text="Sensibilidad a la luz y al sonido",
                                           variable=sensibilidad_luz_var, font=("Arial", 10), bg="green")
sensibilidad_luz_checkbox.pack(anchor='w')
dificultad_tragar_checkbox = tk.Checkbutton(ventana, text="Dificultad para tragar", variable=dificultad_tragar_var,
                                            font=("Arial", 10), bg="green")
dificultad_tragar_checkbox.pack(anchor='w')
dolor_oido_checkbox = tk.Checkbutton(ventana, text="Dolor de oído", variable=dolor_oido_var, font=("Arial", 10),
                                     bg="green")
dolor_oido_checkbox.pack(anchor='w')
dificultad_escuchar_checkbox = tk.Checkbutton(ventana, text="Dificultad para escuchar",
                                              variable=dificultad_escuchar_var, font=("Arial", 10), bg="green")
dificultad_escuchar_checkbox.pack(anchor='w')
picazon_piel_checkbox = tk.Checkbutton(ventana, text="Picazón en la piel", variable=picazon_piel_var, font=("Arial", 10),
                                       bg="green")
picazon_piel_checkbox.pack(anchor='w')
erupcion_cutanea_checkbox = tk.Checkbutton(ventana, text="Erupción cutánea", variable=erupcion_cutanea_var,
                                           font=("Arial", 10), bg="green")
erupcion_cutanea_checkbox.pack(anchor='w')

# Establecer estilos adicionales para la ventana principal
ventana.geometry("800x900")
ventana.resizable(False, False)

# Botón para realizar el diagnóstico con estilo personalizado
diagnosticar_btn = tk.Button(ventana, text="Realizar diagnóstico", command=diagnosticar_sintomas, font=("Arial", 14), bg="green", fg="blue", relief=tk.RAISED)
diagnosticar_btn.place(x=300, y=400)


ventana.mainloop()
