const employees = [
  {
    name: "Wendy Casey",
    department: "Sales",
    numYears: 3,
    dateJoined: "7/13/2018",
  },
  {
    name: "Alicia Stevens",
    department: "IT",
    numYears: 3,
    dateJoined: "7/16/2018",
  },
  {
    name: "Valerie Simpson",
    department: "Customer Care",
    numYears: 2,
    dateJoined: "7/9/2019",
  },
  {
    name: "Lenard Banks",
    department: "Accounting",
    numYears: 1,
    dateJoined: "7/20/2020",
  },
  {
    name: "Lynn Cannon",
    department: "Accounting",
    numYears: 2,
    dateJoined: "7/11/2019",
  },
  {
    name: "Stacie Richards",
    department: "IT",
    numYears: 2,
    dateJoined: "7/1/2020",
  },
];

var select = document.createElement("select");
select.name = "pets";
select.id = "pets";

for (const val of employees.sort((a, b) => a.name.localeCompare(b.name))) {
  var option = document.createElement("option");
  option.value = val.department;
  option.text = val.name + " " + val.dateJoined;
  select.appendChild(option);
}

var label = document.createElement("label");
label.innerHTML = "Choose your pets: ";
label.htmlFor = "pets";

document.getElementById("container").appendChild(label).appendChild(select);
