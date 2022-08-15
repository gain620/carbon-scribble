package sandbox api;

fn GetInt(x: i32) -> i32 {
    return x;
}

fn GetStr(x: String) -> String {
    return x;
}

fn GetX[T:! Type](x: T) -> T {
    return x;
}

fn Main() -> i32 {
    Print("Without generics");
    Print("{0}", GetInt(100));
    Print(GetStr("1000"));

    Print("Generics");
    Print("{0}", GetX(100));
    Print(GetX("1000"));
    return 0;
}
