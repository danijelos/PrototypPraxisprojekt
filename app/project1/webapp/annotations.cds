using ManageService as service from '../../../srv/manage-productionorders';

annotate ppprototyp.Productionorders with @odata.draft.enabled;

annotate service.Productionorders with @(
	UI: {
        // Presentation in the List Report
		LineItem: [
            {Value: ID, Label: 'ID'},
            {Value: description, Label: 'Description'},
			{Value: starttime, Label: 'Starttime'},
            {Value: priority, Label: 'Priority'},
		],
        HeaderInfo : {
            TypeName       : 'Productionorder', 
            TypeNamePlural : 'Productionorders', 
            TypeImageUrl   : 'sap-icon://value-stream',
            Title          : {Value : ID}
        },
        Identification: [
            {Value: ID, Label: 'ID'}
        ],
        Facets:[
            { $Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Productionorders'}
        ],
        FieldGroup#Productionorders:{
            Data: [
                {Value: ID, Label: 'ID'},
                {Value: description, Label: 'Description'},
			    {Value: starttime, Label: 'Starttime'},
                {Value: priority, Label: 'Priority'},
                {Value: details, Label: 'Details'}
            ]
        },
    }    
);