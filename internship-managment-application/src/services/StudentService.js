import Api from '@/services/Api'

export default {
  AddFormSubmit (information) {
    return Api().post('/add-form-submit', information)
  },

  EditAddForm (information) {
    return Api().post('/add-form-edit', information)
  }
}
