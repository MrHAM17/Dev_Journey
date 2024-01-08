package com.tikpikshortvideosocialnetworking.app.modules.postsquickvideo.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.postsquickvideo.`data`.model.PostsQuickVideoModel
import org.koin.core.KoinComponent

class PostsQuickVideoVM : ViewModel(), KoinComponent {
  val postsQuickVideoModel: MutableLiveData<PostsQuickVideoModel> =
      MutableLiveData(PostsQuickVideoModel())

  var navArguments: Bundle? = null
}
