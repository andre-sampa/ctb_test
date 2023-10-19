use debug::PrintTrait;

// RANDOM FUNCTION - Not Ready, still pseudo random. 
// Maybe we can pass some variable from game_entropy as entropy

fn Random(entropy:u64) -> u64 {
    '---RANDOM FUNCTION---'.print();
    let a = 1664525;
    let c = 1013904223;
    let m = 2 ^ 32;
    let mut random_number:u64 = (a * entropy + c) % m;
    random_number % 101
}

// RANDOM FUNCTION TEST
#[cfg(test)]
mod tests {
    use debug::PrintTrait;
    use super::{Random};
    #[test]
    #[available_gas(100000)]
    fn random_function_test() {
        '----CALLING RANDOM FUNCTION----'.print();
        let mut x:u64 = 0;
        x.print();
        x = Random(5);
        x.print();
        let mut y:u64 = 0;
        y.print();
        y = Random(20);
        y.print();
    }
}

