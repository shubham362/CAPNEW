namespace app.elarning;
using { Language ,managed } from '@sap/cds/common';

type String50 : String(50);

entity Categories   {
    key id : UUID;
        name : String50;
        description : String50;
        Courses: Association to many Courses on Courses.category = $self;
    
}

entity Courses : managed {
    key category : Association to Categories;
    key course_id : UUID;
        course_name : String50;
        price: String(10);
        Language: Language;
}