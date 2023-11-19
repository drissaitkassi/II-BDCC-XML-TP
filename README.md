# II-BDCC-XML-TP


```
<!ELEMENT biblio (a,b,c)
order is to be respected if elements are seperated with ","
if elements are seperated with | then the order is not important 

Occurance Indicator :
+ = 1 or more 
* = 0 or more
? = 0 or 1 > 
none = one and only one

///////
<!ELEMENT EMPTY OR (#PCDATA) if there is text inside the element

/////// ATTRIBUTES ////////

specify attribte : name type presence 

type can be:
    CDATA for text that can have space 
    NMTOKEN for text without space
    ID for uniquness
    (A|B|C)  A : this type is called Ennumerate , it list all possible values and give one by default  
presence can be :
    #REQUIRED
    #IMPLIED (optional )
    #FIXED
```