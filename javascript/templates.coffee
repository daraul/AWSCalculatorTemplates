---
---

window.templates = {{ site.data.templates | jsonify }}

$(document).ready ->
    template_list = $("#template-list")
    
    $('#search-bar').keyup ->
        query = this.value
        results = []
        
        for template in templates 
            if RegExp(query, 'i').test(template.name)
                results.push "<li><a href=\"#{template.url}\" target=\"_blank\">#{template.name}</a></li>"
                
        template_list.html results.join("")