package sandbox api;

fn GuessNumber(num: i32) {
    if(not(num == 7)) {
        Print("You guessed correctly");
    } else {
        Print("Please try again");
    }
}

fn LuckyNumbers(num: i32) -> i32{
    match(num) {
        case 7 => {
            Print("7 is a lucky number");
            return num;
        }
        case 11 => {
            Print("11 is a lucky number");
            return num;
        }
        case 12 => {
            Print("12 is a lucky number");
            return num;
        }
        default => {
            Print("{0} is not a lucky number", num);
            return num;
        }
    }
}

fn OutputWhileLoop() {
    var i: i32 = 11;

    while(not(i == 0)) {
        i = i - 1;
        Print("Num : {0}", i);
    }
}


fn Main() -> i32 {
    GuessNumber(3);
    GuessNumber(5);
    GuessNumber(7);

    LuckyNumbers(7);
    LuckyNumbers(8);
    LuckyNumbers(11);
    LuckyNumbers(13);

    OutputWhileLoop();

    return 0;
}
