WORKING ON IT….. COMMENTS ARE WELCOME.- (Spanish / English) (download link at the end of post)

To use it, you need the portable version of Firefox. Place it in EasyOS’s portables folder. If you want to run Firefox in RAM, you’ll also need to use the dedicated firefox-ram.sh launcher.

Firefox Preload, son una serie de scripts en fase beta, destinados a, usando un firefox portable, cargar firefox anticipadamente y tenerlo siempre activo en el tray de tu sistema, para así iniciar en un abrir y cerrar de ojos.

Esta configurado para que cargue al inicio de easyos y se quede residente en el tray (sin aparecer icono alguno en la barra de tareas cuando está precargado).

What is more importante, you can right click on the tray icon and configure a lot of options of this program. PLZ, try it.

Podréis encontrar diferentes versiones de este programa, que corresponden a diferentes evoluciones del mismo.

Para utilizarlo, hay que usar la versión portable de firefox, ponerla en la carpeta portables de easyos y si queréis utilizarlo en ram, hay que utilizar también el lanzador específico firefox-ram.sh

ENGLISH

🔥 firefox_preload — Instant Firefox, Ready in RAM

I have developed a small collection of shell scripts designed to make Firefox feel faster and remain instantly accessible on lightweight Linux systems such as EasyOS and Puppy Linux.
What does it do?

🚀 Faster Firefox startup
The main launcher starts my portable Firefox installation using a persistent profile while placing temporary files and browser cache in RAM. This reduces unnecessary disk activity and can make Firefox feel more responsive.

🧠 RAM-based cache and temporary files
Cache and temporary data are stored under /dev/shm, taking advantage of system memory instead of constantly writing them to the SSD.

💾 Persistent user profile
Bookmarks, settings, passwords and other important profile data remain stored normally, so they are preserved between sessions.

📥 Firefox in the system tray
A second script uses KDocker to launch Firefox directly into the system tray. Firefox remains ready in the background without occupying space on the taskbar.

🖱️ Instant access
Click the tray icon whenever Firefox is needed. It opens immediately because the browser is already running.

♻️ Automatic restart
If Firefox is closed completely, the tray launcher automatically starts it again after a short pause.

🔍 Built-in checks
The script verifies that both the Firefox RAM launcher and KDocker are available before starting. If something is missing, it displays a clear error message.
Requirements

    Linux with an X11 desktop
    KDocker
    Firefox or a portable Firefox installation
    A writable /dev/shm RAM filesystem

The paths can easily be edited to suit a different Firefox installation.

firefox_preload is a simple experiment focused on what matters most to me: responsiveness, low disk activity and having frequently used applications always ready.
