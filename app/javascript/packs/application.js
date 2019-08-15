import "bootstrap";
import "select2/dist/css/select2.css"
import { initUpdateNavbarOnScroll } from "../components/_navbar-krypton";
import { initSelect2 } from '../plugins/init_select2';

initUpdateNavbarOnScroll();
initSelect2();

$(function () {
  $('[data-toggle="tooltip"]').tooltip();
})


