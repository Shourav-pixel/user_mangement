$(document).ready(function() {
    // Set up CSRF token inclusion for all AJAX requests
    $.ajaxSetup({
      headers: {
        'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
    });
  });
  