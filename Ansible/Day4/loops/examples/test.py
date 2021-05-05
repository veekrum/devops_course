from jinja2 import Template

template = Template("Hello {{ user }}")
data = { "user": "johnny" }
print(template.render(data))
