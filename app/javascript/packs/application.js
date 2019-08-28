import "bootstrap";

import { initSweetalert2 } from '../plugins/init_sweetalert2';

initSweetalert2('.booking-button', {
  type: "success",
  showConfirmButton: false,
  html: `Your appointment with ${document.querySelector("#therapist-name").innerText} is set on.  <br><br> <a  href="/dashboard"><button class="swal2-confirm swal2-styled" style="background-color: #7882E9">See your bookings</button><a> `,
  showCloseButton: true,
}, (value) => {
  if (value) {
    const link = document.querySelector('.swal2-confirm .swal2-styled');
    link.click();
  }
});
