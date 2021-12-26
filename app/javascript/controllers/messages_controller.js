import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    window.scroll({
      top: document.body.scrollHeight,
      behavior: 'instant'
    })
  }

  reset() {
    this.element.reset()
    //this.element.querySelector('#message_content').focus()
  }
}
