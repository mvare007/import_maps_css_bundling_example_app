import { Controller } from "@hotwired/stimulus";
import { DataTable } from "simple-datatables"

// Documentation: https://github.com/fiduswriter/Simple-DataTables/wiki/
export default class extends Controller {
	static values = {
		url: String,
		perPage: { type: String, default: '100' },
		perPageSelect: { type: Boolean, default: false }
	};

	initialize() {
		this.datatable = new DataTable(this.element, this.#options());
		if (this.hasUrlValue) {
			this.#getData();
		}
	}

	#options() {
		return {
			perPage: this.perPageValue,
			perPageSelect: this.perPageSelectValue,
			labels: this.labels()
		}
	}

	labels() {
		return {
			placeholder: "Search...",
			perPage: "{select} entries per page",
			noRows: "No entries to found",
			info: "Showing {start} to {end} of {rows} entries"
		}
	}

	// private

	#getData() {
		fetch(this.urlValue)
		.then(response => response.json())
		.then(data => this.datatable.import({ type: "json", data: JSON.stringify(data) }));
	}
}
