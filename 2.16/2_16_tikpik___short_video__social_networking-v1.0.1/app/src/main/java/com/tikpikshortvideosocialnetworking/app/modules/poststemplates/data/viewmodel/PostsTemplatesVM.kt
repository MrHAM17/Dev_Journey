package com.tikpikshortvideosocialnetworking.app.modules.poststemplates.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.poststemplates.`data`.model.PostsTemplatesModel
import org.koin.core.KoinComponent

class PostsTemplatesVM : ViewModel(), KoinComponent {
  val postsTemplatesModel: MutableLiveData<PostsTemplatesModel> =
      MutableLiveData(PostsTemplatesModel())

  var navArguments: Bundle? = null
}
