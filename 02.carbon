package sandbox api;


class Point {
    var x: i32;
    var y: i32;

    fn GetX[me: Point]() -> i32 {
        return me.x;
    }

    fn GetY[me: Point]() -> i32 {
        return me.y;
    }

    fn Origin() -> Point {
        return {.x = 0, .y = 0};
    }
    
}

fn OutputClass() {
    var p: Point = {.x = 100, .y = 200};
    Print("Value1 : {0}", p.GetX());

    var newP: Point = Point.Origin();
    Print("Value2 : {0}", newP.GetX());

}

fn OutputStruct() {
    var person: auto ={.name = "Gain", .loc = "Seoul"};
    let constPerson: auto ={.name = "Gain", .loc = "Seoul"};

    // constPerson.name = "John";

    Print(person.name);
    Print(constPerson.name);

    var p: {.x: i32, .y: i32} = {.x = 1, .y =  2};

    Print("Value : {0}", p.x);
}

fn OutputPointer() {
    var x: i32 = 5;

    x = 10;

    var p: i32* = &x;

    *p = 6;

    var q: i32* = p;

    *q = 3;

    Print("X = {0}", x);

    var s: auto = {.x = 10, .y = 30};
    var sp: i32* = &s.x;

    *sp = 100;

    Print("S.x = {0}", s.x);
}

fn Main() -> i32 {
    OutputPointer();

    return 0;
}
