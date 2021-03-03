export default [
  {
    group_name: 'Student Information',
    inputs: [
      {
        name: 'First Name',
        type: 'text',
        width: 'half-width'
      },
      {
        name: 'Last Name',
        type: 'text',
        width: 'half-width'
      },
      {
        name: 'User ID (919#)',
        type: 'number',
        width: 'half-width'
      },
      {
        name: 'Student Email',
        type: 'email',
        width: 'half-width'
      }
    ],
    note: ''
  },
  {
    group_name: 'Course Instructor Information',
    inputs: [
      {
        name: 'First Name',
        type: 'text',
        width: 'half-width'
      },
      {
        name: 'Last Name',
        type: 'text',
        width: 'half-width'
      },
      {
        name: 'Email',
        type: 'email',
        width: 'half-width'
      }
    ],
    note: 'If the instructor name is Staff, please use the email for the appropriate Department Chair or School Director in place of instructor.'
  },
  {
    group_name: 'Verify Email Addresses!',
    inputs: [],
    note: 'Double check the email addresses you have provided for accuracy. This form will automatically be routed to the email.'
  }

]
