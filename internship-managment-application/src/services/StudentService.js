import Api from '@/services/Api'

export default {
  AddFormSubmit (information) {
    return Api().post('/form-submit', information)
  }
}
