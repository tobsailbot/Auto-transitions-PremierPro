; mediante reconocimiento de imagenes busca el panel de efectos, ingresa el texto a bucar y arrastra el mouse automaticamenteal efecto para aplicarlo nuevamente al clip
; elejir la ruta del archivo efectPanel.png 

moveToTransition(){
CoordMode,Pixel,Screen   ; ejecutar dentro de la pantalla en medida de pixeles
MouseGetPos, xpos, ypos   ; obtener coordenasdas actuales del mouse a las variables xpos ypos
ImageSearch, x, y, 0, 0, 1920, 1080, D:\TOBI-PC\Imagenes\efectPanel.png   ; buscar en la pantalla la imagen 
MouseMove, %x%, %y%         ; mover el cursor hacia la imagen reconocida
MouseMove, 0, 90, 0, R      ; mover el mouse 90 pixeles en direccion
MouseClickDrag, left, , , %xpos%, %ypos%     ; click izq y arrastra a la posicion original xpos ypos
}

+^Right::
Send, ^!j::
Send, {Tab 3}
Send, push right
moveToTransition()
return

+^Left::
Send, ^!j::
Send, {Tab 3}
Send, push left
moveToTransition()
return

+^Down::
Send, ^!j::
Send, {Tab 3}
Send, push down
moveToTransition()
return

+^Up::
Send, ^!j::
Send, {Tab 3}
Send, push up
moveToTransition()
return



