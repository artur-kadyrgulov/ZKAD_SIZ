using { zkad_siz as my } from '../db/schema.cds';

@path : '/service/zkad_sizService'
service zkad_sizService
{
    entity Employees as
        projection on my.Employees;

    entity Clothes as
        projection on my.Clothes;

    @odata.draft.enabled
    entity AssignedClothes as
        projection on my.AssignedClothes;
}

annotate zkad_sizService with @requires :
[
    'authenticated-user'
];
