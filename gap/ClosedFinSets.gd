#
# FiniteTopologies: (Co)frames/Locales of closed/open subsets of finite topologies
#
# Declarations
#

#! @Chapter The coframe of closed subsets of a finite topology

#! @Section Constructors

#! @Description
#!  Construct the topological coframe of closed subset of a topology on the finite set <A>T</A>.
#! @Arguments T
#! @Returns a &CAP; category
DeclareAttribute( "TopologicalCoframeOnAFiniteSet",
        IsFiniteSet );

#! @Description
#!  Construct an closed subset (as an object in the coframe
#!  <A>C</A>=<C>TopologicalCoframeOnAFiniteSet</C>(<C>Range</C>(<A>m</A>))
#!  of closed subsets of a finite topology) from a morphism <A>m</A> in the category <C>FinSets</C>.
#!  The morphism <A>m</A> stands for its set-theoretic image.
#! @Arguments m, C
#! @Returns a &CAP; object
#! @Group ClosedFinSet
DeclareOperation( "ClosedFinSet",
        [ IsCapCategoryMorphism, IsCapCategory ] );

#! @Arguments m
#! @Group ClosedFinSet
DeclareOperation( "ClosedFinSet",
        [ IsCapCategoryMorphism ] );
#! @InsertChunk ClosedFinSet
