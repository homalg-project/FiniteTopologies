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
#!  Construct an open subset (as an object in the frame of open subsets
#!  of a finite topology) from a morphism <A>m</A> in the category <C>FinSets</C>.
#!  The morphism <A>m</A> stands for its set-theoretic image.
#! @Arguments m
#! @Returns a &CAP; object
#! @Group OpenFinSet
DeclareOperation( "OpenFinSet",
        [ IsCapCategoryMorphism ] );

#! @Arguments images, T
#! @Group 
DeclareOperation( "OpenFinSet",
        [ IsList, IsFiniteSet ] );
#! @InsertSystem OpenFinSet
