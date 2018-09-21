#! @System ClosedFinSet

LoadPackage( "FiniteTopologies" );

#! @Example
T  := FinSet( [ 1, 2, 3, 4 ] );
#! <An object in FinSets>
A := FinSet( [ 1, 2 ] );
#! <An object in FinSets>
m1 := MapOfFinSets( A, [[ 1, 1 ], [ 2, 2 ]], T );
#! <A morphism in FinSets>
A1 := ClosedFinSet( m1 );
#! <An object in The coframe of closed subsets of a topology on a finite set>
#! @EndExample
