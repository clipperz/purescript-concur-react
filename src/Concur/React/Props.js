"use strict";

function resetTargetValue(s) {
	return function(event) {
		return function() {
			event.target.value = s;
		}
	};
};

let emptyProp_ = {}

export {resetTargetValue, emptyProp_}
