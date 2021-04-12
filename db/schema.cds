using {cuid, managed} from '@sap/cds/common';

namespace de.fhaachen.ppprototyp;
entity Productionorders : cuid{
    description: String(500);
    starttime: String(500);
    priority: String(500);
    details: String(500);
}