
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-poslowie-japonscy-web="http://www.tei-c.org/pm/models/poslowie-japonscy/web/module" at "../transform/poslowie-japonscy-web-module.xql";
import module namespace pm-poslowie-japonscy-print="http://www.tei-c.org/pm/models/poslowie-japonscy/print/module" at "../transform/poslowie-japonscy-print-module.xql";
import module namespace pm-poslowie-japonscy-latex="http://www.tei-c.org/pm/models/poslowie-japonscy/latex/module" at "../transform/poslowie-japonscy-latex-module.xql";
import module namespace pm-poslowie-japonscy-epub="http://www.tei-c.org/pm/models/poslowie-japonscy/epub/module" at "../transform/poslowie-japonscy-epub-module.xql";
import module namespace pm-poslowie-japonscy-fo="http://www.tei-c.org/pm/models/poslowie-japonscy/fo/module" at "../transform/poslowie-japonscy-fo-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "poslowie-japonscy.odd" return pm-poslowie-japonscy-web:transform($xml, $parameters)
    default return pm-poslowie-japonscy-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "poslowie-japonscy.odd" return pm-poslowie-japonscy-print:transform($xml, $parameters)
    default return pm-poslowie-japonscy-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "poslowie-japonscy.odd" return pm-poslowie-japonscy-latex:transform($xml, $parameters)
    default return pm-poslowie-japonscy-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "poslowie-japonscy.odd" return pm-poslowie-japonscy-epub:transform($xml, $parameters)
    default return pm-poslowie-japonscy-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:fo-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "poslowie-japonscy.odd" return pm-poslowie-japonscy-fo:transform($xml, $parameters)
    default return pm-poslowie-japonscy-fo:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    