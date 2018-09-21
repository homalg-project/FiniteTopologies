#
# FiniteTopologies: (Co)frames/Locales of closed/open subsets of finite topologies
#
# Implementations
#

##
InstallMethod( OpenFinSet,
        "for a CAP category morphism and a CAP category",
        [ IsCapCategoryMorphism, IsCapCategory and IsCartesianClosedCategory ],

  function( m, frame )
    local A;
    
    A := rec( );
    
    ObjectifyObjectForCAPWithAttributes( A, frame,
            MonomorphismInUnderlyingCategory, m
            );
    
    Assert( 4, IsWellDefined( A ) );
    
    return A;
    
end );

##
InstallMethod( OpenFinSet,
        "for a CAP category morphism",
        [ IsCapCategoryMorphism ],

  function( m )
    
    return OpenFinSet( m, TopologicalFrameOnAFiniteSet( Range( m ) ) );
    
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
    
    ADD_COMMON_METHODS_FOR_FRAMES_AND_COFRAMES_DEFINED_USING_FinSets( TopologicalFrame, m -> OpenFinSet( m, TopologicalFrame ) );
    
    ##
    AddInternalHomOnObjects( TopologicalFrame,
      function( A, B )
        
    end );
    
    Finalize( TopologicalFrame );
    
    return TopologicalFrame;
    
end );
