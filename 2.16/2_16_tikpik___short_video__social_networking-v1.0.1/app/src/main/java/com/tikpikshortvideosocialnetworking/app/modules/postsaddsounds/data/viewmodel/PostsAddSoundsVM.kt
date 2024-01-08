package com.tikpikshortvideosocialnetworking.app.modules.postsaddsounds.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.postsaddsounds.`data`.model.PostsAddSoundsModel
import com.tikpikshortvideosocialnetworking.app.modules.postsaddsounds.`data`.model.PostsaddsoundsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PostsAddSoundsVM : ViewModel(), KoinComponent {
  val postsAddSoundsModel: MutableLiveData<PostsAddSoundsModel> =
      MutableLiveData(PostsAddSoundsModel())

  var navArguments: Bundle? = null

  val postsAddSoundsList: MutableLiveData<MutableList<PostsaddsoundsRowModel>> =
      MutableLiveData(mutableListOf())
}
