// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";
import "./jquery";
import * as bootstrap from "bootstrap";
import "./sbadmin/sbadmin.js";
// import "./sbadmin/jquery-easing/jquery.easing.min.js";

Turbo.session.drive = false;
