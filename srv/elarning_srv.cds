using app.elarning from '../db/elarning';

service eLarning{

    entity Categories as projection on elarning.Categories;

    entity Courses as projection on elarning.Courses;
}