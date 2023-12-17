/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package proyectocomunicacion.menuprincipal;

import java.awt.Color;
import java.sql.Timestamp;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class MensajeLabel extends JPanel{

    String textoMensaje;
    int posicion, horizontalAlignment;
    Timestamp timestamp;
    
    public MensajeLabel(String textoMensaje, int posicion, int horizontalAlignment, Timestamp timestamp) {
        this.textoMensaje = textoMensaje;
        this.posicion = posicion;
        this.horizontalAlignment = horizontalAlignment;
        this.timestamp = timestamp;
        
        setLayout(null);
        
        JLabel mensajeTexto = new JLabel(textoMensaje);
        mensajeTexto.setBounds(10, 10, 670, 50);
        mensajeTexto.setOpaque(true);
        mensajeTexto.setBackground(new Color(176, 176, 181));
        mensajeTexto.setHorizontalAlignment(this.horizontalAlignment);
        mensajeTexto.setVisible(true);
        
        JLabel fechaMensaje = new JLabel(String.valueOf(timestamp));
        fechaMensaje.setBounds(10, 60, 670, 10);
        fechaMensaje.setHorizontalAlignment(this.horizontalAlignment);
        fechaMensaje.setFont(new java.awt.Font("sansserif", 0, 8));
        fechaMensaje.setVisible(true);
        
        add(mensajeTexto);
        add(fechaMensaje);
        
        setBounds(10, posicion, 680, 80);
        setBorder(null);
        setFocusable(true);
        setOpaque(true);
        setVisible(true);
    }
    
}
