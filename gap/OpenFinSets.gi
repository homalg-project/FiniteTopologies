#
# FiniteTopologies: (Co)frames/Locales of closed/open subsets of finite topologies
#
# Implementations
#

##
InstallMethod( OpenFinSet,
        "for a CAP category morphism",
        [ IsCapCategoryMorphism ],

  function( m )
    local A, FF;
    
    A := rec( );
    
    FF := TopologicalFrameOnAFiniteSet( Range( m ) );
    
    ObjectifyObjectForCAPWithAttributes( A, FF,
            MonomorphismInUnderlyingCategory, m
            );
    
    Assert( 4, IsWellDefined( A ) );
    
    return A;
    
end );

##
InstallMethod( TopologicalFrameOnAFiniteSet,
        "for a finite set",
        [ IsFiniteSet ],
        
  function( T )
    local name, TopologicalFrame;
    
    name := "The frame of open subsets of a topology on a finite set";
    
    TopologicalFrame := CreateCapCategory( name );
    
    TopologicalFrame!.AmbientSpace := T;
    
    TopologicalFrame!.UnderlyingCategory := FinSets;
    
    AddObjectRepresentation( TopologicalFrame, IsObjectInFiniteTopologicalFrame );
    
    AddMorphismRepresentation( TopologicalFrame, IsMorphismInFiniteTopologicalFrame );
    
    ADD_COMMON_METHODS_FOR_HEYTING_ALGEBRAS( TopologicalFrame );
    
    ADD_COMMON_METHODS_FOR_FRAMES_AND_COFRAMES_DEFINED_USING_FinSets( TopologicalFrame );
    
    ##
    AddInternalHomOnObjects( TopologicalFrame,
      function( A, B )
        
    end );
    
    Finalize( TopologicalFrame );
    
    return TopologicalFrame;
    
end );

##
InstallMethod( Display,
        "for an object in a Zariski frame",
        [ IsObjectInFiniteTopologicalFrame ],

  function( A )
    
    Display( ImageObject( MonomorphismInUnderlyingCategory( A ) ) );
    
end );
