var counters_mapping = {
	    'counters': {
	        key: function(data) {
	            return ko.utils.unwrapObservable(data.id);
	        }
	    }
	}

var viewModel = function(data) {
	var mapping = counters_mapping;
    return ko.mapping.fromJS(data, mapping);
}