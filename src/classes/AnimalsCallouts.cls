public class AnimalsCallouts{
    public static HttpResponse animalsGetCallout(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        HttpResponse response = Http.send(request);
        if(response.getStatusCode() != 200){
            System.debug('This is not the expected result' +
                        response.getStatusCode() + ' ' + response.getStatus());
        } else{
            System.debug(response.getBody());
            Map<string, Object> m = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            System.debug(m.get('animals'));
            for(object obj: (LIst<Object>)m.get('animals')){
                system.debug(obj);
            }
        }
        return response;
    }
    
    public static void animalsPostCallout(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
		request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;Charset=UTF-8');
        request.setBody('{"name": "Mohan"}');
        HttpResponse response = Http.send(request);
        if(response.getStatusCode() != 201){
            System.debug('There is something wrong in the code' +
                        response.getStatusCode() + ' ' + response.getStatus());
        } else{
            System.debug(response.getBody());
        }
    }
}