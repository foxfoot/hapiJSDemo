module.exports = [
    {
        method : "GET",
        path : '/',
        handler : function(request, h){
            return h.response("Hello World!").code(301);
            //return reply;
        }
    },
    {
        method : "GET",
        path : "/hello/{name?}",
        handler : function(request, h) {
            let name = encodeURIComponent(request.params.name);
            if(name!==undefined){
                return h.response("Got name:" + name).code(200);
            }else{
                return h.response("Unable to handle name:" + name).code('abb');
            }
        }
    }
];
