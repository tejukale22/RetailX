({
	doInit : function(component, event, helper) {
        
        component.set("v.Message1", "Button1 Initialized");
         component.set("v.Message2", "Button2 Initialized");
		
	},
    Helper : function(component, event, helper) {
    
    component.set("v.Message1","Button clicked");
    
		},
 
 anotherhandleclick : function(component, event, helper) {
	
    component.set("v.Message2","Another button click");
	}
    
})