import Api from '@/services/Api'

export default {
  AddFormSubmit (information) {
    return Api().post('/student-internship-add-form', information)
  }
}
