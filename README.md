<h2>Milk-Management-System</h2> 

<h3>Introduction:</h3>
<p>
  The Milk Management System is designed to manage dairy, members, customers, milk collections from members, sales to the customer and plant and all the dairy related processes.The Dairy Management System provides rate card features to collection managers so they can collect milk of different fat with proper cost.
</p>

<p>
  A simple case of milk procurement application is considered where milk is being collected through a number of milk societies established in the milk procurement area. Each society may supply CM (Cow Milk) or BM (Buffalo Milk) or both types of milk. Each society is being supervised by a staff of a dairy plant. One supervisor may supervise more than one society.
</p>

<h3>Entities:</h3>
<p>In this example, there are seven entities namely: </p>
<ul>
  <li>1.MILK</li>
  <li>2.FARMER</li>
  <li>3.SOCIETY</li>
  <li>4.CITY</li>
  <li>5.TOWN</li>
  <li>6.MILK-RECEIVED</li>
  <li>7.BILLS</li>
</ul>

<p>Structures of these relations are described as follows:</p>
<ul>
  <li>MILK(Membership_ID,Date,Time,Type of Milk,Quantity,FAT%,SNF)</li>
  <li>FARMER(Membership_ID,NAME,ADDRESS)</li>
  <li>SOCIETY(Society_ID,Supervisor-Name, Number)</li>
  <li>CITY(Society_ID,City-Name)</li>
  <li>TOWN(Society_ID,Town-Name)</li>
  <li>MILK-RECEIVED(Society no.,Date,Time,Vehicle No.,Quantity of Milk,FAT%,SNF)</li>
  <li>BILLS(Membership ID,Farmer’s Name,Payment Period,Amount,Quantity of Milk)</li>
</ul>
