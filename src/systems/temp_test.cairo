#[system]
mod test_system {
    use dojo::world::Context;
    fn execute(ctx: Context) {
       let x = 4;
        
    }
}

// HOW CAN WE TEST THE VALUE OF X INSIDE THE EXECUTE FUNCTION?


// #[cfg(test)]
// mod test_tmp {
//     use ctb_dojo::test_system;
//     #[test]
//     #[available_gas(100000)]
//     fn temp_test2() {
//         assert(x == 4, 'its not 4');
        

//     }
// }


// #[cfg(test)]
// mod tests {
//     use super::test_system;
//     #[test]
//     #[available_gas(100000)]
//     fn temp_test() {
//         let x = 2;
//         assert(x == 2, 'its not 2');
//     }
// }