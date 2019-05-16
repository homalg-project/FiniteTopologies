#! @Chunk OpenFinSet

LoadPackage( "FiniteTopologies" );

#! @Example
T  := FinSet( [ 1, 2, 3, 4 ] );
#! <An object in FinSets>
A := FinSet( [ 1, 2 ] );
#! <An object in FinSets>
m1 := MapOfFinSets( A, [[ 1, 1 ], [ 2, 2 ]], T );
#! <A morphism in FinSets>
O1 := OpenFinSet( m1 );
#! <An object in The frame of open subsets of a topology on a finite set>
Display( O1 );
#! [ 1, 2 ]
m2 := MapOfFinSets( A, [[ 1, 2 ], [ 2, 3 ]], T );
#! <A morphism in FinSets>
O2 := OpenFinSet( m2 );
#! <An object in The frame of open subsets of a topology on a finite set>
Display( O2 );
#! [ 2, 3 ]
N := DirectProduct( O1, O2 );
#! <An object in The frame of open subsets of a topology on a finite set>
Display( N );
#! [ 2 ]
U := Coproduct( O1, O2 );
#! <An object in The frame of open subsets of a topology on a finite set>
Display( U );
#! [ 1, 2, 3 ]
#! @EndExample
