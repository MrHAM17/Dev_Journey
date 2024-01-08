package com.tikpikshortvideosocialnetworking.app.modules.postsquickphoto.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.postsquickphoto.`data`.model.PostsQuickPhotoModel
import org.koin.core.KoinComponent

class PostsQuickPhotoVM : ViewModel(), KoinComponent {
  val postsQuickPhotoModel: MutableLiveData<PostsQuickPhotoModel> =
      MutableLiveData(PostsQuickPhotoModel())

  var navArguments: Bundle? = null
}
