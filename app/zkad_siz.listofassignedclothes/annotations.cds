using zkad_sizService as service from '../../srv/service';
annotate service.AssignedClothes with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : employees.assignedClothes.employees.FirstName,
                Label : 'FirstName',
            },
            {
                $Type : 'UI.DataField',
                Value : employees.assignedClothes.employees.SecondName,
                Label : 'SecondName',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Clothes',
            ID : 'Clothes',
            Target : 'clothes/@UI.LineItem#Clothes',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : employees.assignedClothes.clothes.NameOfClothes,
            Label : 'NameOfClothes',
        },
        {
            $Type : 'UI.DataField',
            Value : employees.assignedClothes.employees.FirstName,
            Label : 'FirstName',
        },
        {
            $Type : 'UI.DataField',
            Value : employees.assignedClothes.employees.SecondName,
            Label : 'SecondName',
        },
    ],
);

annotate service.Clothes with @(
    UI.LineItem #Clothes : [
        {
            $Type : 'UI.DataField',
            Value : assignedClothes.clothes.NameOfClothes,
            Label : 'NameOfClothes',
        },
        {
            $Type : 'UI.DataField',
            Value : assignedClothes.clothes.ID,
            Label : 'ID',
        },
    ]
);

