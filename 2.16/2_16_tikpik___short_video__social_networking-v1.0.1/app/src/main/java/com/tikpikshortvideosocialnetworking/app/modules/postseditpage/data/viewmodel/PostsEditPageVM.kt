package com.tikpikshortvideosocialnetworking.app.modules.postseditpage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.postseditpage.`data`.model.PostsEditPageModel
import org.koin.core.KoinComponent

class PostsEditPageVM : ViewModel(), KoinComponent {
  val postsEditPageModel: MutableLiveData<PostsEditPageModel> =
      MutableLiveData(PostsEditPageModel())

  var navArguments: Bundle? = null
}
