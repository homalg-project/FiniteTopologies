#! @System ClosedFinSet

LoadPackage( "FiniteTopologies" );

#! @Example
T  := FinSet( [ 1, 2, 3 ] );
#! <An object in FinSets>
A := FinSet( [ 1 ] );
#! <An object in FinSets>
m := MapOfFinSets( A, [[ 1, 1 ]], T );
#! <A morphism in FinSets>
A := ClosedFinSet( m );
#! <An object in The coframe of closed subsets of a topology on a finite set>
#! @EndExample
