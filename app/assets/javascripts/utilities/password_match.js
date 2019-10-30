document.addEventListener('turbolinks:load', function() {
  var password_confirmation = document.querySelector('#user_password_confirmation')

  if (password_confirmation) {
    password_confirmation.addEventListener('input', check_password_confirmation)
  }
})

function check_password_confirmation() {
  var password = document.querySelector('#user_password').value
  var password_confirmation = document.querySelector('#user_password_confirmation').value

  if (password == password_confirmation) {
    document.querySelector('.octicon-info').classList.remove('text-danger')
    document.querySelector('.octicon-info').classList.add('text-success')
    document.querySelector('.octicon-info').classList.remove('hide')
  } else {
    document.querySelector('.octicon-info').classList.remove('text-success')
    document.querySelector('.octicon-info').classList.add('text-danger')
    document.querySelector('.octicon-info').classList.remove('hide')
  }

  if (password_confirmation.length == 0) {
    document.querySelector('.octicon-info').classList.add('hide')
  }
}
