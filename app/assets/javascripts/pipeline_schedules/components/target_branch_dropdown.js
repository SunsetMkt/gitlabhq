export default class TargetBranchDropdown {
  constructor() {
    this.$dropdown = $('.js-target-branch-dropdown');
    this.$dropdownToggle = this.$dropdown.find('.dropdown-toggle-text');
    this.$input = $('#schedule_ref');
    this.initialValue = this.$input.val();
    this.initDropdown();
  }

  initDropdown() {
    this.$dropdown.glDropdown({
      data: this.formatBranchesList(),
      filterable: true,
      selectable: true,
      toggleLabel: item => item.name,
      search: {
        fields: ['name'],
      },
      clicked: (query, el, e) => this.updateInputValue(query, el, e),
      text: item => item.name,
    });

    this.setDropdownToggle();
  }

  formatBranchesList() {
    return this.$dropdown.data('data')
      .map(val => ({ name: val }));
  }

  setDropdownToggle() {
    if (this.initialValue) {
      this.$dropdownToggle.text(this.initialValue);
    }
  }

  updateInputValue(query, el, e) {
    e.preventDefault();
    this.$input.val(query.name);
  }
}
