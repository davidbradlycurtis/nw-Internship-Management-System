import Api from '@/services/Api'

export default {
  AddFormCreate (information) {
    return Api().post('/add-form-create', information)
  },

  EditAddForm (information) {
    return Api().post('/add-form-edit', information)
  },

  GetAddForms (information) {
    return Api().post('/add-form-get-forms', information)
  },

  InternshipFormCreate (information) {
    return Api().post('/internship-application-form-create', information)
  },

  EditInternshipForm (information) {
    return Api().post('/internship-application-edit', information)
  },

  GetInternshipForms (information) {
    return Api().post('/agreement-form-get-forms', information)
  },

  AgreementFormCreate (information) {
    return Api().post('/agreement-form-create', information)
  },

  EditAgreementForm (information) {
    return Api().post('/agreement-form-edit', information)
  }
}
