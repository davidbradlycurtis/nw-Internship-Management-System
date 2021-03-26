import Api from '@/services/Api'

export default {
  AddFormCreate (information) {
    return Api().post('/add-form-create', information)
  },

  EditAddForm (information) {
    return Api().post('/add-form-edit', information)
  },

  InternshipFormCreate (information) {
    return Api().post('/internship-form-create', information)
  },

  EditInternshipForm (information) {
    return Api().post('/internship-form-edit', information)
  },

  AgreementFormCreate (information) {
    return Api().post('/agreement-form-create', information)
  },

  EditAgreementForm (information) {
    return Api().post('/agreement-form-edit', information)
  }
}
