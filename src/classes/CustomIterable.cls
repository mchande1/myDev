global class CustomIterable implements Iterator<list<ContactWrapper>> {
    list<ContactWrapper> innerList {get; set;}
    list<ContactWrapper> listRequested {get; set;}
    Integer i {get; set;}
    public Integer setPageSize {get; set;}
    
    public CustomIterable(List<ContactWrapper> lstAccWr){
        innerList = new List<ContactWrapper>();
        innerList = lstAccWr;
        ListRequested = new List<ContactWrapper>();
        setPageSize = 10;
        i = 0;
    }
    
    global Boolean hasNext(){
        System.debug('1st check for i value' + i);
        System.debug('Input list size' + innerList.size());
        if(i >= innerList.size()) return false;
        else return true;
    }
    
    global Boolean hasPrevious(){
        if(i <= setPageSize) return false;
        else return true;
    }
    
    global List<ContactWrapper> next(){
        listRequested = new List<ContactWrapper>();
        Integer startNumber;
        Integer size = innerList.size();
        System.debug('size variable ' + size);
        if(hasNext()){
            if(size <= (i + setPageSize)){
                startNumber = i;
                i = size;
                System.debug('i value +++ ' + i );
            } else {
                i = (i + setPageSize);
                startNumber = (i - setPageSize);
                System.debug('StartNumber variable ++++ ' + startNumber);
            }
            system.debug('i value is =====' + i);
            system.debug('i value is 2==== ' + (i - setPageSize));
            for(integer start = startNumber; start < i; start++){
                ListRequested.add(innerList[start]);
            }
        }
        return listRequested;
    }
    
    global list<ContactWrapper> previous(){
        listRequested = new List<ContactWrapper>();
        Integer size = innerList.size();
        if(i == size){
            if(math.mod(size, setPageSize) > 0){
                i = size - math.mod(size, setPageSize);
            } else{
                i = (size - setPageSize);
            }
        } else{
            i = (i - setPageSize);
        }
        system.debug('i value is previous =====' + i);
        system.debug('i value is 2previous ==== ' + (i - setPageSize));
        for(integer start = (i - setPageSize); start < i; ++start){
            listRequested.add(innerList[start]);
        }
        return listRequested;
    }
}