namespace zkad_siz;

entity Employees
{
    key ID : UUID;
    FirstName : String(100);
    SecondName : String(100);
    assignedClothes : Association to one AssignedClothes;
}

entity Clothes
{
    key ID : UUID;
    NameOfClothes : String(100);
    assignedClothes : Association to one AssignedClothes;
}

entity AssignedClothes
{
    key ID : UUID;
    employees : Composition of many Employees on employees.assignedClothes = $self;
    clothes : Composition of many Clothes on clothes.assignedClothes = $self;
}
