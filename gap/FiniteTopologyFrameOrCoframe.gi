#
# FiniteTopologies: (Co)frames/Locales of closed/open subsets of finite topologies
#
# Implementations
#

##
InstallMethod( Display,
        "for an object in a topological frame or coframe of a finite set",
        [ IsObjectInFiniteTopologicalFrameOrCoframe ],

  function( A )
    
    Display( ImageObject( MonomorphismInUnderlyingCategory( A ) ) );
    
end );
