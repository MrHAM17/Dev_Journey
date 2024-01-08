package com.housitbuyrentsellproperty.app.modules.formempty.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.housitbuyrentsellproperty.app.modules.formempty.`data`.model.FormEmptyModel
import org.json.JSONObject
import org.koin.core.KoinComponent

class FormEmptyVM : ViewModel(), KoinComponent {
  val formEmptyModel: MutableLiveData<FormEmptyModel> = MutableLiveData(FormEmptyModel())


  var navArguments: Bundle? = null


  var facebookAuthResponse: JSONObject = JSONObject()


  lateinit var googleAuthResponse: GoogleSignInAccount
}
