const person = {
  firstName: "Dean",
  lastName: "Flanagan",
  currentCity: "Fredericton",
};

const today = new Date();

const weekday = new Array(7);
weekday[0] = "Sunday";
weekday[1] = "Monday";
weekday[2] = "Tuesday";
weekday[3] = "Wednesday";
weekday[4] = "Thursday";
weekday[5] = "Friday";
weekday[6] = "Saturday";
var todaysWeekday = weekday[today.getDay()];

function getCurrentTime() {
  return today.toTimeString().split(" ")[0];
}

var newLine = "\r\n";

var str1 =
  "My name is " +
  person.firstName +
  " " +
  person.lastName +
  ", I live in Fredericton and I’m completing this test on a " +
  todaysWeekday;
var str2 =
  "." +
  newLine +
  newLine +
  "Today is " +
  today.toLocaleDateString() +
  ", the present time is " +
  getCurrentTime();
alert(str1 + str2);
