export default {
  groups: [
    {
      legend: 'Student Information',
      infoDumpTitle: 'Student Information',
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
      infoDumpTitle: 'Faculty Information',
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
    },
    {
      legend: 'Student Acknowledgment of Responsibility',
      infoDumpTitle: 'Application Information',
      styleClasses: 'formgroup',
      fields: [
        {
          type: 'listlabel',
          labelText: [
            'I agree to pay all fees and other financial obligations to the University as they become due. I understand that the non-payment of any financial obligation may result in my administrative withdrawal from classes.',
            'I understand that the first bill of each semester will be mailed to my permanent address, and that all subsequent bills will be emailed to my University email account.',
            'I understand the payment due dates for the fall semester are the 15th of August, September, October, and November. Payment due dates for the spring semester are the 15th of January, February, March and April. Payment for the summer semester is the 15th of May.',
            'I understand that if I do not pay my bill in full by the start of the semester, or sign up for an installment plan, I will be auto-enrolled in an installment plan and/or a $20 late fee will be applied to my account.',
            'I understand that, if my financial obligations are not paid when due, the University may retain an attorney or collection agency to assist with the collection of the outstanding financial obligation. I understand that the collection agency may report balances and payment history to any or all national credit bureaus. I agree to reimburse the University for actual costs of collection, including reasonable interest, reasonable attorney’s fees, court costs, and reasonable collection agency fees.',
            'I understand that I must go into CatPAWS by the first day of the term and verify that I intend to attend the courses in which I am enrolled, or my enrollment will be cancelled.'
          ]
        },
        {
          type: 'clicktosign',
          label: 'Date Submitted',
          labelText: 'Requestor (Student) Signature',
          model: 'add_date_signed'
        }
      ]
    }
  ]
}
