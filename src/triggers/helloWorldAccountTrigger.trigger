trigger helloWorldAccountTrigger on Account (before insert) {
    MyHelloWorld.addHelloWorld(trigger.new);
    system.debug('Hello Mohan');
}