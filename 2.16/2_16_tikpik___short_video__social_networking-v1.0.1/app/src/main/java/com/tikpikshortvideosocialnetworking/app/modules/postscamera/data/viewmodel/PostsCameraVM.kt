package com.tikpikshortvideosocialnetworking.app.modules.postscamera.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.postscamera.`data`.model.PostsCameraModel
import org.koin.core.KoinComponent

class PostsCameraVM : ViewModel(), KoinComponent {
  val postsCameraModel: MutableLiveData<PostsCameraModel> = MutableLiveData(PostsCameraModel())

  var navArguments: Bundle? = null
}
