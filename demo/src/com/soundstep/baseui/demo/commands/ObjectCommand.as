package com.soundstep.baseui.demo.commands {
	import com.soma.core.controller.Command;
	import com.soma.core.interfaces.ICommand;
	import com.soundstep.baseui.demo.events.ObjectEvent;
	import com.soundstep.baseui.demo.wires.ObjectsWire;

	import flash.events.Event;

	/**
	 * <b>Author:</b> Romuald Quantin - <a href="http://www.soundstep.com/" target="_blank">www.soundstep.com</a><br />
	 * <b>Company:</b> Less Rain - <a href="http://www.lessrain.com/" target="_blank">www.lessrain.com</a><br />
	 * <b>Class version:</b> 1.0<br />
	 * <b>Actionscript version:</b> 3.0<br />
	 * <b>Copyright:</b> 
	 * <br />
	 * <b>Date:</b> Feb 16, 2010<br />
	 * <b>Usage:</b>
	 * @example
	 * <listing version="3.0"></listing>
	 */
	
	public class ObjectCommand extends Command implements ICommand {

		//------------------------------------
		// private, protected properties
		//------------------------------------
		
		

		//------------------------------------
		// public properties
		//------------------------------------
		
		
		
		//------------------------------------
		// constructor
		//------------------------------------
		
		public function ObjectCommand() {
			
		}
		
		//
		// PRIVATE, PROTECTED
		//________________________________________________________________________________________________
		
		
		
		// PUBLIC
		//________________________________________________________________________________________________
		
		public function execute(event:Event):void {
			var wire:ObjectsWire = ObjectsWire(getWire(ObjectsWire.NAME));
			switch (event.type) {
				case ObjectEvent.SELECT:
					wire.select(ObjectEvent(event).name);
					break;
				case ObjectEvent.ADD:
					wire.add(ObjectEvent(event).name);
					break;
				case ObjectEvent.REMOVE:
					wire.remove(ObjectEvent(event).object);
					break;
			}
		}
	}
}