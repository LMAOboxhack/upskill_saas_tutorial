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
    // Pause usual behaviour (aka save to Database)
    event.preventDefault();
    // Disable button & alert user that JS is working in the background
    submitButton.val("Processing...").prop('disabled', true);
    
    // Grab info from form & assign to variables
    var cardNum = $('#card_number').val(),
      cvcNum = $('#card_code').val(),
      expMonth = $('#card_month').val(),
      expYear = $('#card_year').val();
      
    /* Use Stripe JS library to validate card */
    var error = false;
    var checks = [
      ["card number", Stripe.card.validateCardNumber(cardNum)],
      ["CVC", Stripe.card.validateCVC(cvcNum)],
      ["card expiration date", Stripe.card.validateExpiry(expMonth, expYear)]
    ];
    var checksLength = checks.length;
    for (var i = 0; i < checksLength; i++) {
      if(!checks[i][1]) {
        error = true;
        alert(`The ${checks[i][0]} appears to be invalid.`);
        break;
      }
    }
    
    if (error) { submitButton.val("Sign up").prop('disabled', false); } // Refresh signup button
    else {
      // Send CC info to Stripe using said variables.
      Stripe.createToken({
        number: cardNum,
        cvc: cvcNum,
        exp_month: expMonth,
        exp_year: expYear
      }, stripeResponseHandler); // --> Name of the function executed when the token is returned to us by Stripe
    }
    return false;
  });
    
  // When Stripe returns Card Token,
  function stripeResponseHandler(status, response) {
    // Get the Card Token from the response.
    var token = response.id;
    // Inject Card Token to form as hidden field.
    proForm.append( $('<input type="hidden" name="user[stripe_card_token]">').val(token) )
    // Submit form (with card token & not CC info) to our app for validation. 
    proForm.get(0).submit();
  }
});