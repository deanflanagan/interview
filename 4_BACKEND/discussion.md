This is a subroutine (method or function in other languages) in perl. It contains two subroutines within its block.

Initially private variables are declared: $rs1 and $rs2 are empty and $last is taken from the arguments passed to the main print_gen function (by the shift function).

All three private variables are declared at the outermost block so should be accessible in the inside blocks.

It looks as though the rs variables are assigned methods to check for divisibility by 2 and they either add one or two to the number. If these methods were actually executed, they would I guess keep going on infinite loop to keep taking turns printing or adding one or two.

However this never happens as the print_gen returns $rs1 and $rs2 without those variables’ subroutines (which are not named) to be called at any point. So nothing is printed to the console when running this as a .pl script.
