#tag Class
Class NSParagraphStyle
Inherits NSObject
	#tag Method, Flags = &h1000
		Sub Constructor(id as Ptr, hasOwnership as boolean = false)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From NSObject
		  // Constructor(obj_id as Ptr, hasOwnership as Boolean = false, checkForClass as string = "") -- From NSObject
		  
		  Super.Constructor( id, hasOwnership, "NSParagraphStyle" )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Default() As NSParagraphStyle
		  //# Returns the default paragraph style
		  
		  #if TargetMacOS
		    declare function defaultParagraphStyle lib CocoaLib selector "defaultParagraphStyle" (Cls as Ptr) as Ptr
		    
		    dim p as Ptr
		    p = defaultParagraphStyle( Cocoa.NSClassFromString( "NSParagraphStyle" ))
		    if p<>nil then
		      return   new NSParagraphStyle( p, false )
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LineBreakMode() As integer
		  
		  #if TargetMacOS
		    declare function lineBreakMode lib CocoaLib selector "lineBreakMode" (id as Ptr) as integer
		    
		    return   lineBreakMode( me.id )
		  #endif
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Description"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
			InheritedFrom="NSObject"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
