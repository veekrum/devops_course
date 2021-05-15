from jinja2 import Template

HTML="""
<html>
  <title>jinja ninja example</title>
  <body>
    <h2>Welcome Users to Ninja of Jinja</h2>
    <ol>
    {% for user in users %}
      <li><a href="{{ user.url }}">{{ user.username }}</a></li>
    {% endfor %}
    </ol>
  </body>
</html>
"""

users = { 
  "users": [
    {
      "url": "https://balman.com",
      "username": "balman",
    },
    {
      "url": "https://bikram.com",
      "username": "bikram",
    },
    {
      "url": "https://bibek.com",
      "username": "bibek",
    },
    {
      "url": "https://prashant.com",
      "username": "prashant",
    },
    {
      "url": "https://sahil.com",
      "username": "sahil",
    }
]}



t = Template(HTML)
response=t.render(users)
response=response.replace("\n", "")
file = open("jinja.html", "w")
str_dictionary = repr(response)
file.write(str_dictionary)
file.close()