pub fn reverse(input: &str) -> String {
    //todo!("Write a function to reverse {input}");
    for i in input.chars().rev() {
        println!("{}", i);
    }
    //return input.to_string();
    //return input.chars().rev().collect();
    input.chars().rev().collect()
}
