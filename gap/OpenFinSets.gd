#
# FiniteTopologies: (Co)frames/Locales of closed/open subsets of finite topologies
#
# Declarations
#

#! @Chapter The frame of open subsets of a finite topology

#! @Section Constructors

#! @Description
#!  Construct the topological frame of open subset of a topology on the finite set <A>T</A>.
#! @Arguments T
#! @Returns a &CAP; category
DeclareAttribute( "TopologicalFrameOnAFiniteSet",
        IsFiniteSet );

#! @Description
#!  Construct an open subset (as an object in the frame
#!  <A>F</A>=<C>TopologicalFrameOnAFiniteSet</C>(<C>Range</C>(<A>m</A>))
#!  of open subsets of a finite topology) from a morphism <A>m</A> in the category <C>FinSets</C>.
#!  The morphism <A>m</A> stands for its set-theoretic image.
#! @Arguments m, F
#! @Returns a &CAP; object
#! @Group OpenFinSet
DeclareOperation( "OpenFinSet",
        [ IsCapCategoryMorphism, IsCapCategory ] );

#! @Arguments m
#! @Group OpenFinSet
DeclareOperation( "OpenFinSet",
        [ IsCapCategoryMorphism ] );
#! @InsertChunk OpenFinSet
