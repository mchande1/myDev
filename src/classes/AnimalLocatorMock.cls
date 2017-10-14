@isTest
global class AnimalLocatorMock  implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest req) {
		HttpResponse response = new HttpResponse();
        String body = '{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}';
        response.setBody(body);
        return response;
    }
}