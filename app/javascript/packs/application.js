import "bootstrap";
import "select2/dist/css/select2.css"
import 'mapbox-gl/dist/mapbox-gl.css';
import { initUpdateNavbarOnScroll } from "../components/_navbar-krypton";
import { initSelect2 } from '../plugins/init_select2';
import { initMapbox } from '../plugins/init_mapbox';

initUpdateNavbarOnScroll();
initSelect2();
initMapbox();

$(function () {
  $('[data-toggle="tooltip"]').tooltip();
})


