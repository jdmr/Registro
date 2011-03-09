package mx.gob.cfe.registro.web;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import javax.faces.context.FacesContext;
import javax.faces.event.ValueChangeEvent;
import mx.gob.cfe.registro.modelo.Registro;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author jdmr
 */
public class RegistroController {

    private static final Logger log = LoggerFactory.getLogger(RegistroController.class);
    private Registro registro;
    private boolean editando = false;
    private String locale;
    private Map<String, Object> countryMap;

    /** Creates a new instance of RegistroController */
    public RegistroController() {
        log.info("Creando una nueva instancia de RegistroController");
        countryMap = new LinkedHashMap<String, Object>();
        countryMap.put("English", new Locale("en"));
        countryMap.put("Español", new Locale("es"));
    }

    public String nuevo() {
        log.info("Nuevo Registro");
        editando = false;
        registro = new Registro();
        return "nuevoRegistro";
    }

    public String edita() {
        log.info("Editando Registro {}", registro);
        editando = true;
        return "nuevoRegistro";
    }

    public String crea() {
        log.info("Creando Registro {}", registro);
        return "registroCreado";
    }

    public String guarda() {
        log.info("Guardando Registro {}", registro);
        return "registroCreado";
    }

    public String inicio() {
        log.info("Inicio de app");
        return "inicio";
    }

    public Registro getRegistro() {
        log.debug("Obtiene registro");
        return registro;
    }

    public void setRegistro(Registro registro) {
        log.debug("Asigna registro");
        this.registro = registro;
    }

    public boolean getEditando() {
        return editando;
    }

    public void setEditando(boolean editando) {
        this.editando = editando;
    }

    public Map<String, Object> getCountryMap() {
        return countryMap;
    }

    public void setCountryMap(Map<String, Object> countryMap) {
        this.countryMap = countryMap;
    }

    public String getLocale() {
        return locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public void localeChanged(ValueChangeEvent e) {

        String localeStr = e.getNewValue().toString();

        for (Map.Entry<String, Object> entry : countryMap.entrySet()) {
            if (entry.getValue().toString().equals(localeStr)) {
                Locale locale = (Locale) entry.getValue();
                FacesContext.getCurrentInstance().getViewRoot().setLocale(locale);
            }
        }
    }
}
