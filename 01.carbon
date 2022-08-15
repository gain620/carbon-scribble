package sandbox api;

var globalX: i32 = 100;

fn Add(x: i32, y: i32) -> i32 {
    return x + y;
}

fn Square(x: i32) -> i32 {
    return x * x;
}

fn OutputStr() -> String {
    var ret_str:String = """
    Hello There!
    Hello World!
    """;
    ret_str = "Hello Carbon!";

    return ret_str;
}

fn OutputConstStr() -> auto {
    let ret_str:String = "Hello There!";

    return ret_str;
}

fn OutputArr() -> auto {
    var i_arr: [i32; 5] = (0,1,2,3,4);
    var str_arr: [String; 2] = ("Hello", "World");

    Print("{0}", i_arr[1]);
    Print(str_arr[1]);

    return i_arr;
}

fn OutputTuple() -> i32{
    var t_1: auto = (1, "Hello", true, 2);
    var t_2: (String, bool, i32) = ("World", true, 2);

    var t: auto = (1,3);
    var s: auto = t;

    return t[0] + s[1];
}


fn Main() -> i32 {
    Print("{0}, {0}", Square(12));
    Print(OutputStr());
    Print(OutputConstStr());

    var x: auto = "auto val";
    Print(x);

    Print("Global X = {0}", globalX);

    OutputArr();

    Print("Tuple Sum = {0}", OutputTuple());

    return Add(-1, 2);
}
