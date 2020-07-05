/* global $, Stripe */
// When DocumentReady function triggered 
$(document).on('turbolinks:load', function() {
  
  // Assign variables to select form & submit button
  var proForm = $('#pro_form');
  var submitButton = $('#form-submit-btn');
  
  // Set Stripe Public key
  Stripe.setPublishableKey( $('meta[name="stripe-key"]').attr('content') );
  
  // When 'Submit' button is pressed,
  submitButton.click(function(event) {
    // Prevent usual behaviour (validation & save to Database)
    event.preventDefault();
    // Change button to spinner & alert user that JS is working in the background
    submitButton.prop('disabled', true);
    submitButton.get(0).innerHTML = '<i class="fa fa-circle-o-notch fa-spin"></i> Please wait...';
    
    // Grab info from form & assign to variables
    var cardNum = $('#card_number').val(),
      cvcNum = $('#card_code').val(),
      expMonth = $('#card_month').val(),
      expYear = $('#card_year').val();
      
    /* Use Stripe JS library to validate card */
    var error = false;
    var checks = {
      "card number": Stripe.card.validateCardNumber(cardNum),
      "CVC": Stripe.card.validateCVC(cvcNum),
      "card expiration date": Stripe.card.validateExpiry(expMonth, expYear)
    };
    
    for (const [key, value] of Object.entries(checks)) {
      if(!value) {
        error = true;
        var msg = "The " + key + " appears to be invalid.";
        alert(msg);
        break;
      }
    }
    
    // If there is an error, refresh the signup button to allow user to rectify fields
    if (error) { submitButton.val("Sign up").prop('disabled', false); submitButton.get(0).innerHTML = "Sign up" }
    else {
      // Send CC info to Stripe
      Stripe.card.createToken({
        number: cardNum,
        cvc: cvcNum,
        exp_month: expMonth,
        exp_year: expYear
      }, stripeResponseHandler); // --> Name of the function (below) executed when the token is returned by Stripe
    }
    
    return false;
  });
    
  // When Stripe returns Card Token,
  function stripeResponseHandler(status, response) {
    if (response.error) { // Problem!
      // Show the errors on the form
      proForm.find('.payment-errors').text(response.error.message);
      submitButton.val("Sign up").prop('disabled', false); // Refresh signup button
    } else { // Token was created!
      // Get the Card Token from the response.
      var token = response.id;
      // Inject Card Token to form as hidden field.
      proForm.append( $('<input type="hidden" name="user[stripe_card_token]">').val(token) );
      // Submit form (with card token & not CC info) to our app for validation & saving. 
      proForm.get(0).submit();
    }
  }
});