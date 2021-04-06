// import VueFormGenerator from 'vue-form-generator'

export default {
  groups: [
    {
      legend: 'Student Information',
      styleClasses: 'formgroup',
      fields: [
        {
          type: 'input',
          inputType: 'text',
          label: 'First Name',
          model: 'first_name',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'Last Name',
          model: 'last_name',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'number',
          label: 'User ID (919#)',
          model: 'u_num',
          required: true,
          validator: ['integer', 'required'],
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'email',
          label: 'Student Email',
          model: 'email',
          required: true,
          validator: ['email', 'required'],
          styleClasses: 'half-width'
        }
      ]
    },
    {
      legend: 'Course Instructor Information',
      styleClasses: 'formgroup',
      fields: [
        {
          type: 'input',
          inputType: 'text',
          label: 'First Name',
          model: 'faculty_first_name',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'Last Name',
          model: 'faculty_last_name',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'email',
          label: 'Email',
          model: 'faculty_email',
          required: true,
          validator: ['email', 'required'],
          styleClasses: 'half-width'
        },
        {
          type: 'label',
          label: 'If the instructor name is Staff, please use the appropriate Department Chair or School Director in place of instructor',
          model: 'faculty_note',
          styleClasses: 'note'
        }
      ]
    },
    {
      legend: 'Verify Email Addresses!',
      styleClasses: 'formgroup',
      fields: [
        {
          type: 'label',
          label: 'Double check the email addresses you have provided for accuracy. This form will automatically be routed to the email',
          model: 'email_note',
          styleClasses: 'note'
        }
      ]
    }
  ]
}
