
package proyectocomunicacion.menuprincipal;

import java.sql.Timestamp;

public class Mensaje implements Comparable<Mensaje> {
int id;
    String remitente;
    String destinatario;
    String contenido;
    Timestamp timestamp;

    public Mensaje(int id, String remitente, String destinatario, String contenido, Timestamp timestamp) {
        this.id = id;
        this.remitente = remitente;
        this.destinatario = destinatario;
        this.contenido = contenido;
        this.timestamp = timestamp;
    }

    @Override
    public int compareTo(Mensaje otroMensaje) {
        return this.timestamp.compareTo(otroMensaje.getTimestamp());
    }

    @Override
    public String toString() {
        return "[" + timestamp + "] " + remitente + ": " + contenido;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }
}