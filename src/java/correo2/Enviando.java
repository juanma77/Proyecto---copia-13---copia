package correo2;

import java.util.Properties;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *

 */
public class Enviando {

    public Enviando() {
    }

    public boolean enviarCorreo(Correo correo) {
        try {
            Properties p = new Properties();
            p.put("mail.smtp.host", "smtp.gmail.com");
            p.setProperty("mail.smtp.starttls.enable", "true");
            p.setProperty("mail.smtp.port", "587");
            p.setProperty("mail.smtp.user", correo.getEmail());
            p.setProperty("mail.smtp.auth", "true");

            Session inicioSession = Session.getDefaultInstance(p, null);
            BodyPart comentario = new MimeBodyPart();
            comentario.setText(correo.getMensaje());

            MimeMultipart m = new MimeMultipart();
            m.addBodyPart(comentario);
            MimeMessage mensaje = new MimeMessage(inicioSession);
            mensaje.setFrom(new InternetAddress(correo.getEmail()));
            mensaje.addRecipient(Message.RecipientType.TO, new InternetAddress(correo.getDestino()));
            mensaje.setSubject("COMENTARIOS");
            mensaje.setContent(m);

            Transport t = inicioSession.getTransport("smtp");
            t.connect("blueskylander777@gmail.com", "arribalosrayos");
            t.sendMessage(mensaje, mensaje.getAllRecipients());
            t.close();
            return true;

        } catch (Exception e) {
            return false;
        }

    }

}
