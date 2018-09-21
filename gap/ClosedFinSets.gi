#
# FiniteTopologies: (Co)frames/Locales of closed/open subsets of finite topologies
#
# Implementations
#

##
InstallMethod( ClosedFinSet,
        "for a CAP category morphism",
        [ IsCapCategoryMorphism ],

  function( m )
    local A, FF;
    
    A := rec( );
    
    FF := TopologicalCoframeOnAFiniteSet( Range( m ) );
    
    ObjectifyObjectForCAPWithAttributes( A, FF,
            MonomorphismInUnderlyingCategory, m
            );
    
    Assert( 4, IsWellDefined( A ) );
    
    return A;
    
end );

##
InstallMethod( TopologicalCoframeOnAFiniteSet,
        "for a finite set",
        [ IsFiniteSet ],
        
  function( T )
    local name, TopologicalCoframe;
    
    name := "The coframe of closed subsets of a topology on a finite set";
    
    TopologicalCoframe := CreateCapCategory( name );
    
    TopologicalCoframe!.AmbientSpace := T;
    
    TopologicalCoframe!.UnderlyingCategory := FinSets;
    
    AddObjectRepresentation( TopologicalCoframe, IsObjectInFiniteTopologicalCoframe );
    
    AddMorphismRepresentation( TopologicalCoframe, IsMorphismInFiniteTopologicalCoframe );
    
    ADD_COMMON_METHODS_FOR_HEYTING_ALGEBRAS( TopologicalCoframe );
    
    ADD_COMMON_METHODS_FOR_FRAMES_AND_COFRAMES_DEFINED_USING_FinSets( TopologicalCoframe );
    
    ##
    AddInternalHomOnObjects( TopologicalCoframe,
      function( A, B )
        
    end );
    
    Finalize( TopologicalCoframe );
    
    return TopologicalCoframe;
    
end );
