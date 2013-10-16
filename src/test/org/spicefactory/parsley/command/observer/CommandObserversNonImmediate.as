/*
 * Copyright 2011 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.spicefactory.parsley.command.observer {

import org.spicefactory.lib.command.data.CommandData;
import org.spicefactory.parsley.command.trigger.Trigger;
/**
 * @author Jens Halm
 */
public class CommandObserversNonImmediate {
	
	
	public var firstResult:Boolean;
	public var secondResult:Boolean;
	public var allResults:Boolean;
	
	
	[CommandResult]
	public function setFirstResult (result: String, trigger: Trigger): void {
		firstResult = true;
	}
	
	[CommandResult]
	public function setSecondResult (result: Date, trigger: Trigger): void {
		secondResult = true;
	}
	
	[CommandResult]
	public function setAllResults (result: CommandData, trigger: Trigger): void {
		allResults = true;
	}
	
	
}
}
