### **Iniciar sesión como SA en SQL Server**

#### 1. Habilitar el modo de autenticación SQL Server (modo mixto)

1. En el **Explorador de objetos**, haz clic derecho sobre el nombre de tu servidor (por ejemplo: `MI-LAPTOP-123\Usuario`).
2. Selecciona **Propiedades**.
3. Ve a la sección **Seguridad**.
4. Marca la opción:

   >  *SQL Server y autenticación de Windows* (Mixed Mode)
5. Haz clic en **Aceptar**.
6. **Reinicia el servicio de SQL Server** para aplicar el cambio:

   * En SSMS: clic derecho sobre el servidor → **Reiniciar**.
   * O desde "Administrador de servicios" de Windows.

---

#### 2. Habilitar el inicio de sesión `sa`

1. Expande **Seguridad → Inicios de sesión**.
2. Haz clic derecho sobre `sa` → **Propiedades**.
3. En la pestaña **Estado (Status)**:

   * En “Permitir inicio de sesión”: selecciona **Habilitado**.
4. En la pestaña **General**:

   * Asigna una **contraseña segura** (ejemplo: `P@ssw0rd!`).
5. Haz clic en **Aceptar**.

---

#### 3. Reinicia el servidor nuevamente

Esto asegura que los cambios surtan efecto.

---

#### 4. Iniciar sesión con `sa`

1. Cierra la sesión actual en SSMS.
2. En la ventana de conexión:

   * **Servidor:** (el mismo que usas normalmente)
   * **Autenticación:** SQL Server Authentication
   * **Inicio de sesión:** `sa`
   * **Contraseña:** (la que configuraste)
3. Haz clic en **Conectar**.

---

## Posible error:

"La cadena de certificación fue emitida por una entidad en la que no se confía (SSL Provider, error: 0)"

significa que SQL Server está intentando usar una conexión cifrada (SSL/TLS), pero el certificado no es de confianza o no está configurado correctamente.
Esto sucede con frecuencia en instalaciones locales de SQL Server (Express o Developer).

Soluciones posibles
✅ Opción 1: Desactivar el cifrado de conexión (lo más rápido)

En la ventana de conexión de SSMS:

Haz clic en el botón “Opciones >>”.

Ve a la pestaña Propiedades de conexión.

Desmarca la opción:

“Cifrar conexión” (Encrypt connection)

Vuelve a intentar conectarte con tu usuario sa.

Esto suele resolver el problema de inmediato.
