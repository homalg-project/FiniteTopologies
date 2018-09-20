#
# FiniteTopologies: (Co)frames/Locales of closed/open subsets of finite topologies
#
# Declarations
#

#! @Chapter (Co)frames/Locales of closed/open subsets of finite topologies

#! @Section GAP Categories

#! @Description
#!  The &GAP; category of objects in a frame or coframe of a finite topology.
#! @Arguments object
DeclareCategory( "IsObjectInFiniteTopologicalFrameOrCoframe",
        IsObjectInThinCategory );

#! @Description
#!  The &GAP; category of morphisms in a frame or coframe of a finite topology..
#! @Arguments morphism
DeclareCategory( "IsMorphismInFiniteTopologicalFrameOrCoframe",
        IsMorphismInThinCategory );

#! @Section Attributes

DeclareAttribute( "MonomorphismInUnderlyingCategory",
        IsObjectInFiniteTopologicalFrameOrCoframe );

#! @Section Operations

