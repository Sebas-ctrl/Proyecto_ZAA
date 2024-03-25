DELIMITER //

CREATE PROCEDURE llenar_tabla_equipos()
BEGIN
    -- Insertar datos en la tabla equipos
    INSERT INTO equipos (nombre_del_equipo, numero_de_serie, marca, modelo)
    VALUES 
        ('Caminadora', 'SER123', 'MarcaX', 'ModeloA'),
        ('Bicicleta estática', 'SER456', 'MarcaY', 'ModeloB'),
        ('Máquina de pesas', 'SER789', 'MarcaZ', 'ModeloC');
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE llenar_tabla_mantenimiento()
BEGIN
    -- Insertar datos en la tabla mantenimiento con valores predeterminados o funciones
    INSERT INTO mantenimiento (descripcion_del_trabajo_realizado, fecha_de_mantenimiento, estado_del_equipo_despues_del_mantenimiento)
    VALUES ('Trabajo realizado automáticamente', CURRENT_DATE(), 'Excelente');
END //

DELIMITER ;