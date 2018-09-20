#
# FiniteTopologies: (Co)frames/Locales of closed/open subsets of finite topologies
#
# Declarations
#

#! @Chapter Frames of open subsets of finite topologies

#! @Section GAP Categories

#! @Description
#!  The &GAP; category of objects in a frame of a finite topology.
#! @Arguments object
DeclareCategory( "IsObjectInFiniteTopologicalFrame",
        IsObjectInFiniteTopologicalFrameOrCoframe );

#! @Description
#!  The &GAP; category of morphisms in a frame of finite topology.
#! @Arguments morphism
DeclareCategory( "IsMorphismInFiniteTopologicalFrame",
        IsMorphismInFiniteTopologicalFrameOrCoframe );
