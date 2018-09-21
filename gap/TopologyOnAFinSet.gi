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
        
        
        
    end );
    
    ##
    AddIsHomSetInhabited( finite_topological_frame_or_coframe,
      function( S, T )
        
        
    end );
    
    ##
    AddTerminalObject( finite_topological_frame_or_coframe,
      function( arg )
        
        
    end );
    
    ##
    AddInitialObject( finite_topological_frame_or_coframe,
      function( arg )
        
    end );
    
    ##
    AddCoproduct( finite_topological_frame_or_coframe,
      function( L )
            
    end );
    
    ##
    AddDirectProduct( finite_topological_frame_or_coframe,
      function( L )
        
    end );
    
end );
