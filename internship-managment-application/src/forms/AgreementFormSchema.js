export default {
  groups: [
    {
      styleClasses: 'formgroup paragraphformgroup',
      fields: [
        {
          type: 'integratedinput',
          cinputType: 'date',
          beforeText: 'To provide a basis of understanding and to promote working relationships, this agreement is established on ',
          afterText: '.',
          model: 'agreement_date'
        },
        {
          type: 'integratedinput',
          cinputType: 'date',
          beforeText: 'This work experience will start on ',
          afterText: ', and will end on or before',
          model: 'start_date'
        },
        {
          type: 'integratedinput',
          cinputType: 'date',
          afterText: ' unless the agreement becomes unsatisfactory to any party involved.',
          model: 'end_date'
        }
      ]
    },
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
          inputType: 'text',
          label: 'Address',
          model: 'student_address',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'full-width'
        },
        {
          type: 'tel-input',
          label: 'Telephone',
          model: 'student_phone_number',
          required: true,
          styleClasses: 'half-width'
        },
        {
          type: 's-number-input',
          label: 'S-Number',
          model: 'student_id',
          required: true,
          validator: ['required'],
          styleClasses: 'half-width'
        }
      ]
    },
    {
      legend: 'Cooperating Business Information',
      styleClasses: 'formgroup',
      fields: [
        {
          type: 'input',
          inputType: 'text',
          label: 'Organization Name',
          model: 'business_name',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'full-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'Organization Address',
          model: 'business_address',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'full-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'Sponser/Supervisor',
          model: 'supervisor_name',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'e-mail',
          label: 'Email',
          model: 'supervisor_email',
          required: true,
          validator: ['e-mail', 'required'],
          styleClasses: 'half-width'
        },
        {
          type: 'tel-input',
          label: 'Telephone',
          model: 'supervisor_phone_number',
          required: true,
          styleClasses: 'half-width'
        },
        {
          type: 'textArea',
          label: 'Other Arrangements',
          model: 'business_arrangements',
          rows: 10,
          validator: ['string'],
          styleClasses: 'full-textarea'
        }
      ]
    },
    {
      legend: 'The Student Agrees To:',
      styleClasses: 'formgroup',
      fields: [
        {
          type: 'listlabel',
          labelText: [
            'Do an honest day’s work, recognizing that the employer must profit from the student’s labor in order to justify providing the internship experience.',
            'Keep the employer’s interest in mind and be punctual, dependable, and loyal.',
            'Follow instructions, avoid unsafe acts, and be alert to unsafe conditions.',
            'Do all jobs assigned to the best of one’s ability. Be alert to perform unassigned tasks which promote the welfare of the business.',
            'Notify the employer prior to any absence.',
            'Keep records of the work experience and complete all reports the school and employer require.',
            'Report to the University Supervisor any problem, in regard to the training, prior to any termination.'
          ]
        },
        {
          type: 'textArea',
          label: 'Other',
          model: 'other_student_agreements',
          rows: 10,
          validator: ['string'],
          styleClasses: 'full-textarea'
        }
      ]
    },
    {
      legend: 'The Intern Sponser Agrees To:',
      styleClasses: 'formgroup',
      fields: [
        {
          type: 'listlabel',
          labelText: [
            'Provide the student with opportunities to learn how to do well as many jobs as possible, with particular reference to any arrangements stated specifically.',
            'Help the internship supervisor make an accurate evaluation of the student’s performance.',
            'Avoid subjecting the student to unnecessary hazards. Notify the parents and the university immediately in case of an accident or illness and if any other serious problem arises.',
            'Consult with the University Internship Supervisor if the trainee is no longer desired in the business.',
            'Notify the employer prior to any absence.'
          ]
        },
        {
          type: 'textArea',
          label: 'Other',
          model: 'other_supervisor_agreements',
          rows: 10,
          validator: ['string'],
          styleClasses: 'full-textarea'
        }
      ]
    },
    {
      legend: 'The University Internship Supervisor Agrees To:',
      styleClasses: 'formgroup',
      fields: [
        {
          type: 'listlabel',
          labelText: [
            'Assist the student in finding an internship sponsor.',
            'Assist both the student and cooperating employer in establishing the internship and provide and explain all information concerning the program and the responsibilities of each party involved.',
            'Maintain contact on a regular basis with the student and sponsor.',
            'Work with the sponsor and the student to insure that the student benefits from the internship experience and the sponsor’s interests are considered.'
          ]
        },
        {
          type: 'textArea',
          label: 'Other',
          model: 'other_university_agreements',
          rows: 10,
          validator: 'string',
          styleClasses: 'full-textarea'
        }
      ]
    },
    {
      legend: 'Signed and Accepted By:',
      styleClasses: ['formgroup'],
      fields: [
        {
          type: 'clicktosign',
          labelText: 'Student Signature'
        },
        {
          type: 'clicktosign',
          labelText: 'Intern Sponser Signature'
        }
      ]
    }
  ]
}
