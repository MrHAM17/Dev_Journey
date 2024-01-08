package com.tikpikshortvideosocialnetworking.app.modules.postsaddeffects.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.postsaddeffects.`data`.model.PostsAddEffectsModel
import com.tikpikshortvideosocialnetworking.app.modules.postsaddeffects.`data`.model.PostsaddeffectsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PostsAddEffectsVM : ViewModel(), KoinComponent {
  val postsAddEffectsModel: MutableLiveData<PostsAddEffectsModel> =
      MutableLiveData(PostsAddEffectsModel())

  var navArguments: Bundle? = null

  val postsAddEffectsList: MutableLiveData<MutableList<PostsaddeffectsRowModel>> =
      MutableLiveData(mutableListOf())
}
