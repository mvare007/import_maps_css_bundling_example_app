import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
	static targets = ['refreshable'];
  static values = { interval: { type: Number, default: 5000 } };

  connect() {
    this.interval = setInterval(() => {
      this.refresh();
    }, this.intervalValue);
  }

	refresh() {
		Array.from(this.refreshableTargets).forEach(el => {
			el.dispatchEvent(new Event('ComponentRefresh'));
		})
	}

  disconnect() {
    clearInterval(this.interval);
  }
}
