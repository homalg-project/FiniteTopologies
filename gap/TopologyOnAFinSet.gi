#
# FiniteTopologies: (Co)frames/Locales of Zariski closed/open subsets
#
# Implementations
#

##
InstallGlobalFunction( ADD_COMMON_METHODS_FOR_FRAMES_AND_COFRAMES_DEFINED_USING_FinSets,
  function( finite_topological_frame_or_coframe, object_constructor )
    
    ##
    AddIsWellDefinedForObjects( finite_topological_frame_or_coframe,
      function( A )
        local T, emb, im;
        
        T := finite_topological_frame_or_coframe!.AmbientSpace;
        
        A := MonomorphismInUnderlyingCategory( A );
        
        if not IsEqualForObjects( Range( A ), T ) then
            return false;
        fi;
        
        return IsWellDefined( A );
        
    end );
    
    ##
    AddIsHomSetInhabited( finite_topological_frame_or_coframe,
      function( S, T )
        
        S := MonomorphismInUnderlyingCategory( S );
        
        T := MonomorphismInUnderlyingCategory( T );
        
        ## TODO: Once IsLiftableAlongMonomorphisms is in CAP use the code below
        #return IsLiftableAlongMonomorphisms( T, S );
        
        return not LiftAlongMonomorphism( T, S ) = fail;
        
    end );
    
    ##
    AddTerminalObject( finite_topological_frame_or_coframe,
      function( arg )
        local T;
        
        T := finite_topological_frame_or_coframe!.AmbientSpace;
        
        return object_constructor( IdentityMorphism( T ) );
        
    end );
    
    ##
    AddInitialObject( finite_topological_frame_or_coframe,
      function( arg )
        local T, I;
        
        T := finite_topological_frame_or_coframe!.AmbientSpace;
        I := InitialObject( finite_topological_frame_or_coframe!.UnderlyingCategory );
        
        return object_constructor( UniversalMorphismIntoTerminalObjectWithGivenTerminalObject( I, T ) );
        
    end );
    
    ##
    AddCoproduct( finite_topological_frame_or_coframe,
      function( L )
        local P;
        
        L := List( L, MonomorphismInUnderlyingCategory );
        
        P := List( [ 1 .. Length( L ) ], i -> ProjectionInFactorOfFiberProduct( L, i ) );
        
        return object_constructor( UniversalMorphismFromPushout( P, L ) );
        
    end );
    
    ##
    AddDirectProduct( finite_topological_frame_or_coframe,
      function( L )
        
        L := List( L, MonomorphismInUnderlyingCategory );
        
        return object_constructor( MorphismFromFiberProductToSink( L ) );
        
    end );
    
end );
