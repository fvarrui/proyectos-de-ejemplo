// compile: rustc -o a.out
use std::io;

fn multiplication_table(number :i32) {
    for i in 1..11 {
        println!(" {:2} * {:2} = {:3}", i, number, i*number)
    }
}

fn main() {
    let mut input = String::new();
    println!("Write a number: ");
    io::stdin()
        .read_line(&mut input)
        .expect("failed to read from stdin");

    let number: i32 = input.trim().parse().expect("invalid input");
    multiplication_table(number);
}
