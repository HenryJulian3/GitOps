# Usa Python 3.9 como base
FROM python:3.9-slim

# Configura el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo main.py al contenedor
COPY main.py .

# Instala Flask, que es necesario para ejecutar el programa
RUN pip install flask

# Expone el puerto 5000 para el servidor web
EXPOSE 5000

# Comando para ejecutar el programa
CMD ["python", "main.py"]
