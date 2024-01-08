package com.tikpikshortvideosocialnetworking.app.modules.letsin.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.tikpikshortvideosocialnetworking.app.modules.letsin.`data`.model.LetsInModel
import org.json.JSONObject
import org.koin.core.KoinComponent

class LetsInVM : ViewModel(), KoinComponent {
  val letsInModel: MutableLiveData<LetsInModel> = MutableLiveData(LetsInModel())


  var navArguments: Bundle? = null


  var facebookAuthResponse: JSONObject = JSONObject()


  lateinit var googleAuthResponse: GoogleSignInAccount
}
