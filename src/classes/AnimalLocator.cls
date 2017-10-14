public class AnimalLocator {
	
    public Static String getAnimalNameById(Integer i){
        String endPoint = 'https://th-apex-http-callout.herokuapp.com/animals/' + i;     //setting the end point url
        
        Http h = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        
        HttpResponse response = h.send(request);
        String json = response.getBody();
        JSON2Apex obj = JSON2Apex.parse(json);
        String animalName = obj.Animal.Name;
        return animalName;
    }
}