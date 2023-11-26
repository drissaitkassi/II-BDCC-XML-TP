# II-BDCC-XML-TP


## DTD
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


## SCHEMA XML

```
same as DTD there  elements and attribute 

ELEMENTS: 

<xsd:element 
        name="<ELEMENT NAME>" 
        type="<ELEMENT TYPE>"
        minOccurence=""<MIN>" default 1 min value 0
        maxOccurence=""<MAX>" default 1 max value "unbounded">
</xsd:element>

There are 2 Types of "type" :

1) simpleType :
        -string
        -date
        -int
        -float
        -double 
        -enum (must be declared in a spetial way that allows to apply restrictions :see Exemple Below)
2) complexe Type :
        -Refers to Other Elements
        -or it containes ATTRIBUTES

*Simple Types Declaration can be done on the elements alongside name and min max occurence 

*ComplexType Declaration is done inside the element like so :

// here we declare that it is a complexType
<xsd:ComplexType>

    // here we specify if it is a SEQUANCE (respect the order) or ALL to indicate that the order is not important 
    <xsd:SEQUANCE (or ALL)>

    </xsd:SEQUANCE (or ALL)>

</xsd:ComplexType>
        
ATTRIBUTE: 

!^ Before Declaring element attribute , we should delcare children elements if they exist  either in Sequence or using ALL 

<xsd:attribute 
        name="<ATTRIBUTE NAME>" 
        type="<ATTRIBUTE TYPE>"
        use="<PRESENCE>" (REQUIRED,OPTIONAL,PROHIBETED)>
</xsd:attribute>

//Example of Attribute with Simple type and Restrictions 

<xsd:attribute 
        name="<ATTRIBUTE NAME>" 
        default =""
        use="<PRESENCE>" (REQUIRED,OPTIONAL,PROHIBETED)>

    <xsd:simpleType>
        <xsd:restrictions base="xsd:string"> 
            <xsd:<RESTRICTION>=""></xsd:<RESTRICTION>>
        </xsd:restrictions>
    </xsd:simpleType>
</xsd:attribute>

```