#
# FiniteTopologies: (Co)frames/Locales of closed/open subsets of finite topologies
#
# Declarations
#

#! @Chapter Coframes of closed subsets of finite topologies

#! @Section GAP Categories

#! @Description
#!  The &GAP; category of objects in a coframe of a finite topology.
#! @Arguments object
DeclareCategory( "IsObjectInFiniteTopologicalCoframe",
        IsObjectInFiniteTopologicalFrameOrCoframe );

#! @Description
#!  The &GAP; category of morphisms in a coframe of a finite topology.
#! @Arguments morphism
DeclareCategory( "IsMorphismInFiniteTopologicalCoframe",
        IsMorphismInFiniteTopologicalFrameOrCoframe );
