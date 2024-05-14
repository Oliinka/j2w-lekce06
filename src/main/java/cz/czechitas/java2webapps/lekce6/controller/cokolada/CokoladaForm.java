package cz.czechitas.java2webapps.lekce6.controller.cokolada;
import jakarta.validation.constraints.*;

public class CokoladaForm {
        @NotBlank // validace musí být aby tam nebyl prázdný string- což není null hodnota
        private String zbozi;
        @NotNull //validace - musí být nějaká hodnota - pro objekt
        private Objem objem;
        @NotBlank
        private String jmeno;
        @Email
        @NotBlank
        private String email;
        @AssertTrue
        private boolean obchodniPodminky;
        private boolean newsletter;

        public String getZbozi() {
            return zbozi;
        }

        public void setZbozi(String zbozi) {
            this.zbozi = zbozi;
        }

        public Objem getObjem() {
            return objem;
        }

        public void setObjem(Objem objem) {
            this.objem = objem;
        }

        public String getJmeno() {
            return jmeno;
        }

        public void setJmeno(String jmeno) {
            this.jmeno = jmeno;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public boolean isObchodniPodminky() {
            return obchodniPodminky;
        }

        public void setObchodniPodminky(boolean obchodniPodminky) {
            this.obchodniPodminky = obchodniPodminky;
        }

        public boolean isNewsletter() {
            return newsletter;
        }

        public void setNewsletter(boolean newsletter) {
            this.newsletter = newsletter;
        }
    }



