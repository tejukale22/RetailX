({
	doInit : function(component, event, helper) {
        
        component.set("v.Message1", "Button1 Initialized");
         component.set("v.Message2", "Button2 Initialized");
		
	},
    handleclick : function(component, event, helper) {
    
    //component.set("v.Message1","Button clicked");
    
        var btn = event.getSource();
        var msg = btn.get("v.label");
        
        if(msg=="clickMe"){
            component.set("v.Message1", "Button 1 clicked");
        }
        else
        {
             component.set("v.Message2", "Button 2 clicked");
        }
    
		},
 
 anotherhandleclick : function(component, event, helper) {
	
    component.set("v.Message2","Another button click");
	}
    
})