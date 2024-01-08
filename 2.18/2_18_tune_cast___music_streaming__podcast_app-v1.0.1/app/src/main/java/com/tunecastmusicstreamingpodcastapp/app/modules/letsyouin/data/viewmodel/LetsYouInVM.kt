package com.tunecastmusicstreamingpodcastapp.app.modules.letsyouin.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.tunecastmusicstreamingpodcastapp.app.modules.letsyouin.`data`.model.LetsYouInModel
import org.json.JSONObject
import org.koin.core.KoinComponent

class LetsYouInVM : ViewModel(), KoinComponent {
  val letsYouInModel: MutableLiveData<LetsYouInModel> = MutableLiveData(LetsYouInModel())


  var navArguments: Bundle? = null


  var facebookAuthResponse: JSONObject = JSONObject()


  lateinit var googleAuthResponse: GoogleSignInAccount
}
