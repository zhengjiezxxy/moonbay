CKEDITOR.dialog.add("form",function(t){var e={action:1,id:1,method:1,enctype:1,target:1};return{title:t.lang.forms.form.title,minWidth:350,minHeight:200,onShow:function(){delete this.form;var t=this.getParentEditor().elementPath().contains("form",1);t&&(this.form=t,this.setupContent(t))},onOk:function(){var t,e=this.form,a=!e;a&&(t=this.getParentEditor(),e=t.document.createElement("form"),e.appendBogus()),a&&t.insertElement(e),this.commitContent(e)},onLoad:function(){function t(t){this.setValue(t.getAttribute(this.id)||"")}function a(t){this.getValue()?t.setAttribute(this.id,this.getValue()):t.removeAttribute(this.id)}this.foreach(function(n){e[n.id]&&(n.setup=t,n.commit=a)})},contents:[{id:"info",label:t.lang.forms.form.title,title:t.lang.forms.form.title,elements:[{id:"txtName",type:"text",label:t.lang.common.name,"default":"",accessKey:"N",setup:function(t){this.setValue(t.data("cke-saved-name")||t.getAttribute("name")||"")},commit:function(t){this.getValue()?t.data("cke-saved-name",this.getValue()):(t.data("cke-saved-name",!1),t.removeAttribute("name"))}},{id:"action",type:"text",label:t.lang.forms.form.action,"default":"",accessKey:"T"},{type:"hbox",widths:["45%","55%"],children:[{id:"id",type:"text",label:t.lang.common.id,"default":"",accessKey:"I"},{id:"enctype",type:"select",label:t.lang.forms.form.encoding,style:"width:100%",accessKey:"E","default":"",items:[[""],["text/plain"],["multipart/form-data"],["application/x-www-form-urlencoded"]]}]},{type:"hbox",widths:["45%","55%"],children:[{id:"target",type:"select",label:t.lang.common.target,style:"width:100%",accessKey:"M","default":"",items:[[t.lang.common.notSet,""],[t.lang.common.targetNew,"_blank"],[t.lang.common.targetTop,"_top"],[t.lang.common.targetSelf,"_self"],[t.lang.common.targetParent,"_parent"]]},{id:"method",type:"select",label:t.lang.forms.form.method,accessKey:"M","default":"GET",items:[["GET","get"],["POST","post"]]}]}]}]}});