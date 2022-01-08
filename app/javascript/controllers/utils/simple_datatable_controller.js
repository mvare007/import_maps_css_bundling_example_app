import { Controller } from "@hotwired/stimulus";
import { DataTable } from "simple-datatables"

// Documentation: https://github.com/fiduswriter/Simple-DataTables/wiki/
export default class extends Controller {
	static values = { url: String }

	initialize() {
		this.datatable = new DataTable(this.element);
		if (this.hasUrlValue) {
			this.getData();
		}
	}

	getData() {
		fetch(this.urlValue)
		.then(response => response.json())
		.then(data => this.datatable.import({ type: "json", data: JSON.stringify(data) })
		);
	}
}
