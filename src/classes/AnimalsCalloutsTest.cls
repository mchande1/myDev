@isTest
private class AnimalsCalloutsTest {
	@isTest
	static void testGetCallout(){
		StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
		mock.setStaticResource('GetAnimalResource');
		mock.setStatusCode(200);
		mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
		Test.setMock(HttpCalloutMock.class, mock);
		HttpResponse result = AnimalsCallouts.animalsGetCallout();
		System.assertNotEquals(null, result, 'Callout did not return any response');
		System.assertEquals(200, result.getStatusCode(), 'the status code is not 200');
		Map<String, Object> results = (Map<String, Object>)
			JSON.deserializeUntyped(result.getBody());
		List<Object> animals = (List<Object>) results.get('animals');
		System.debug(animals.size());
		System.assertEquals(4, animals.size());	
	}
	
	@isTest
	static void testPostCallout(){
		
	}
}