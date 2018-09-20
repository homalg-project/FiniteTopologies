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
#!  Construct an closed subset (as an object in the coframe of closed subsets
#!  of a finite topology) from a morphism <A>m</A> in the category <C>FinSets</C>.
#!  The morphism <A>m</A> stands for its set-theoretic image.
#! @Arguments m
#! @Returns a &CAP; object
#! @Group ClosedFinSet
DeclareOperation( "ClosedFinSet",
        [ IsCapCategoryMorphism ] );

#! @Arguments images, T
#! @Group 
DeclareOperation( "ClosedFinSet",
        [ IsList, IsFiniteSet ] );
#! @InsertSystem ClosedFinSet
