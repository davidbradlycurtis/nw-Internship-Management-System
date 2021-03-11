export default [
  {
    group_name: 'Student Information',
    inputs: [
      {
        name: 'Street Line 1',
        type: 'text',
        width: 'full-width'
      },
      {
        name: 'Street Line 2',
        type: 'text',
        width: 'half-width'
      },
      {
        name: 'City',
        type: 'text',
        width: 'half-width'
      },
      {
        name: 'ZipCode',
        type: 'number',
        width: 'half-width'
      },
      {
        name: 'State',
        type: 'text',
        width: 'half-width'
      }
    ]
  },
  {
    group_name: 'Organization Information',
    inputs: [
      {
        name: 'Organization Name',
        type: 'text',
        width: 'full-width'
      },
      {
        name: 'Department of Org',
        type: 'text',
        width: 'full-width'
      },
      {
        name: 'Street Line 1',
        type: 'text',
        width: 'full-width'
      },
      {
        name: 'City',
        type: 'text',
        width: 'full-width'
      },
      {
        name: 'ZipCode',
        type: 'number',
        width: 'half-width'
      },
      {
        name: 'State',
        type: 'text',
        width: 'half-width'
      },
      {
        name: 'International Country(NOT USA)',
        type: 'text',
        width: 'full-width'
      },
      {
        name: 'Site Supervisor Name',
        type: 'text',
        width: 'full-width'
      },
      {
        name: 'Site Supervisor Email',
        type: 'text',
        width: 'full-width'
      },
      {
        name: 'Site phone',
        type: 'number',
        width: 'full-width'
      },
      {
        name: 'International Phone',
        type: 'number',
        width: 'full-width'
      },
      {
        name: 'Start Date',
        type: 'date',
        width: 'half-width'
      },
      {
        name: 'End Date',
        type: 'date',
        width: 'half-width'
      }
    ],
    textarea: 'Please list additional employer information:'
  },
  {
    group_name: 'Offer Letter',
    inputs: [],
    note: 'If you have been given an offer letter from your internship, please attatch a PDF version of it down below.'
  }
]
