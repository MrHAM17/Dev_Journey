package com.fashionistaecommerceapp.app.modules.socialaccountlink.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.socialaccountlink.`data`.model.SocialAccountLinkModel
import com.fashionistaecommerceapp.app.modules.socialaccountlink.`data`.model.SocialaccountlinkRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SocialAccountLinkVM : ViewModel(), KoinComponent {
  val socialAccountLinkModel: MutableLiveData<SocialAccountLinkModel> =
      MutableLiveData(SocialAccountLinkModel())

  var navArguments: Bundle? = null

  val socialAccountLinkList: MutableLiveData<MutableList<SocialaccountlinkRowModel>> =
      MutableLiveData(mutableListOf())
}
