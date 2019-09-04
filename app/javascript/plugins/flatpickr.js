import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.min.css';
const availableDays = document.querySelectorAll(".day");
const calInput = document.querySelector(".cal");
const start_times = document.querySelectorAll(".start-time");
const end_times = document.querySelectorAll(".end-time");

// this function only deals with the days
let days = [];
availableDays.forEach((day) => {
  let time = day.innerText.substring(0, 10);
  days.push(time + " 00:00");
});
console.log(days);

let st = [];
start_times.forEach((time) => {
  st.push(time.innerText.substring(11,19));
});
console.log(st);

let ed = [];
end_times.forEach((time) => {
  ed.push(time.innerText.substring(11,19));
});
console.log(ed);

let min = '';
let max = '';
// listens for the day input and then selects the times
calInput.addEventListener('input', (event)=> {
  let v = event.target.value;
  let i = days.indexOf(v)
  console.log(v);
  console.log(st[i]);
  console.log(ed[i]);
  min = st[i];
  max = ed[i];
  // flatpicker for time initiated only once the user has entered a date
  flatpickr(".timepicker", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    minDate: min,
    maxDate: max,
  });
});

flatpickr(".datepicker", {
  altInput: true,
  dateFormat: "Y-m-d H:i",
  time_24hr: true,
  minDate: "today",
  maxDate: new Date().fp_incr(60),
  enable: days
});
