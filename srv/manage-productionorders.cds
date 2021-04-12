using {de.fhaachen.ppprototyp as ppprototyp} from '../db/schema';

service ManageService {
    entity Productionorders as projection on ppprototyp.Productionorders
    actions {
        action submitProductionorder ();
    }
}