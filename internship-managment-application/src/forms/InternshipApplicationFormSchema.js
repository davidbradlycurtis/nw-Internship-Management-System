export default {
  groups: [
    {
      legend: 'Student Information',
      styleClasses: 'formgroup',
      fields: [
        {
          type: 'input',
          inputType: 'text',
          label: 'Stree Line 1',
          model: 'student_line_1',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'full-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'Street Line 2',
          model: 'student_line_2',
          required: false,
          validator: ['string'],
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'City',
          model: 'student_city',
          required: true,
          validator: ['string', 'validator'],
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'number',
          label: 'Zip Code',
          model: 'student_zip',
          required: true,
          validator: ['string', 'validator'],
          styleClasses: 'half-width'
        },
        {
          type: 'select',
          label: 'State',
          model: 'student_state',
          values: [
            'N/A',
            'AL',
            'AK',
            'AZ',
            'AR',
            'CA',
            'CO',
            'CT',
            'DE',
            'DC',
            'FL',
            'GA',
            'HI',
            'ID',
            'IL',
            'IN',
            'IA',
            'KS',
            'KY',
            'LA',
            'ME',
            'MD',
            'MA',
            'MI',
            'MN',
            'MS',
            'MO',
            'MT',
            'NE',
            'NV',
            'NH',
            'NJ',
            'NM',
            'NY',
            'NC',
            'ND',
            'OH',
            'OK',
            'OR',
            'PA',
            'RI',
            'SC',
            'SD',
            'TN',
            'TX',
            'UT',
            'VT',
            'VA',
            'WA',
            'WV',
            'WI',
            'WY',
            'AS',
            'GU',
            'MH',
            'FM',
            'MP',
            'PW',
            'PR',
            'VI'
          ],
          default: 'MO',
          required: true,
          styleClasses: 'half-width'
        }
      ]
    },
    {
      legend: 'Organization Information',
      styleClasses: 'formgroup',
      fields: [
        {
          type: 'input',
          inputType: 'text',
          label: 'Organization Name',
          model: 'employer_name',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'full-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'Department of Org',
          model: 'department',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'full-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'Street Line 1',
          model: 'street_line_1',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'Street Line 2',
          model: 'street_line_2',
          required: false,
          validator: ['string', 'required'],
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'City',
          model: 'city',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'full-width'
        },
        {
          type: 'input',
          inputType: 'number',
          label: 'Zip Code',
          model: 'zip_code',
          required: true,
          validator: ['number', 'required'],
          styleClasses: 'half-width'
        },
        {
          type: 'select',
          label: 'State',
          model: 'state',
          values: [
            'N/A',
            'AL',
            'AK',
            'AZ',
            'AR',
            'CA',
            'CO',
            'CT',
            'DE',
            'DC',
            'FL',
            'GA',
            'HI',
            'ID',
            'IL',
            'IN',
            'IA',
            'KS',
            'KY',
            'LA',
            'ME',
            'MD',
            'MA',
            'MI',
            'MN',
            'MS',
            'MO',
            'MT',
            'NE',
            'NV',
            'NH',
            'NJ',
            'NM',
            'NY',
            'NC',
            'ND',
            'OH',
            'OK',
            'OR',
            'PA',
            'RI',
            'SC',
            'SD',
            'TN',
            'TX',
            'UT',
            'VT',
            'VA',
            'WA',
            'WV',
            'WI',
            'WY',
            'AS',
            'GU',
            'MH',
            'FM',
            'MP',
            'PW',
            'PR',
            'VI'
          ],
          default: 'MO',
          required: true,
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'International Country (NOT USA)',
          model: 'international_phone',
          styleClasses: 'full-width'
        },
        {
          type: 'input',
          inputType: 'text',
          label: 'Site Supervisor Name',
          model: 'supervisor_name',
          required: true,
          validator: ['string', 'required'],
          styleClasses: 'full-width'
        },
        {
          type: 'input',
          inputType: 'email',
          label: 'Site Supervisor Email',
          model: 'supervisor_email',
          required: true,
          validator: ['email', 'required'],
          styleClasses: 'full-width'
        },
        {
          type: 'tel-input',
          label: 'Site Phone',
          model: 'site_phone',
          required: true,
          styleClasses: 'full-width'
        },
        {
          type: 'input',
          inputType: 'date',
          label: 'Start Date',
          model: 'start_date',
          required: true,
          styleClasses: 'half-width'
        },
        {
          type: 'input',
          inputType: 'date',
          label: 'End Date',
          model: 'end_date',
          required: true,
          styleClasses: 'half-width'
        },
        {
          type: 'textArea',
          label: 'Please list additional employer information',
          model: 'notes',
          rows: 10,
          validator: ['string'],
          styleClasses: 'full-textarea'
        }
      ]
    },
    {
      legend: 'Offer Letter',
      styleClasses: 'formgroup',
      fields: [
        {
          type: 'offerletter',
          text: 'If you have been given an offer letter from your Internship, please attach it down below',
          filetype: '.pdf',
          model: 'offer_letter',
          styleClasses: 'full-width'
        }
      ]
    }
  ]
}
