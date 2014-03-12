The Open Education Resource Handler
==============

Rails version 4.0.3

Skapa databas <code>rake db:migrate</code><br>
Skapa data i databasen <code>rake db:seed</code><br>
Starta servern <code>rails server</code><br>

Alla resurser
==============
GET<br>
<code>
http://localhost:3000/api/v1/resources
</code><br>
RESPONCE<br>
<pre><code>
[
-{
-resource: {
id: 4
namn: "Första resursen"
url: http://tjock.se
description: "en sida skapad av feber.se"
created_at: "2014-02-22T11:34:08.489Z"
updated_at: "2014-02-22T11:34:08.489Z"
-user: {
id: 2
firstname: "Mats"
}
-resource_type: {
id: 1
resource_type: "link"
}
-licence: {
id: 2
licence_typ: "MIT"
}
}
},
</code></pre>

Alla resurser med ID
==============
GET<br>
<code>
http://localhost:3000/api/v1/resources/4
</code><br>

RESPONCE<br>
<pre><code>
{
-resource: {
id: 4
namn: "Första resursen"
url: http://tjock.se
description: "en sida skapad av feber.se"
created_at: "2014-02-22T11:34:08.489Z"
updated_at: "2014-02-22T11:34:08.489Z"
-user: {
id: 2
firstname: "Mats"
}
-resource_type: {
id: 1
resource_type: "link"
}
-licence: {
id: 2
licence_typ: "MIT"
}
}
}
</code></pre>
