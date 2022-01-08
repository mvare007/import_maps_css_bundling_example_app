# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

pin 'fontawesome', to: '@fortawesome/fontawesome-free/js/all.js'
pin 'simple-datatables', to: 'simple-datatables/src/datatable.js'
