package com.tikpikshortvideosocialnetworking.app.modules.postsaddsounds.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentPostsAddSoundsBinding
import com.tikpikshortvideosocialnetworking.app.modules.postsaddsounds.`data`.model.PostsaddsoundsRowModel
import com.tikpikshortvideosocialnetworking.app.modules.postsaddsounds.`data`.viewmodel.PostsAddSoundsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PostsAddSoundsFragment :
    BaseFragment<FragmentPostsAddSoundsBinding>(R.layout.fragment_posts_add_sounds) {
  private val viewModel: PostsAddSoundsVM by viewModels<PostsAddSoundsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val postsAddSoundsAdapter =
    PostsAddSoundsAdapter(viewModel.postsAddSoundsList.value?:mutableListOf())
    binding.recyclerPostsAddSounds.adapter = postsAddSoundsAdapter
    postsAddSoundsAdapter.setOnItemClickListener(
    object : PostsAddSoundsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PostsaddsoundsRowModel) {
        onClickRecyclerPostsAddSounds(view, position, item)
      }
    }
    )
    viewModel.postsAddSoundsList.observe(requireActivity()) {
      postsAddSoundsAdapter.updateData(it)
    }
    binding.postsAddSoundsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerPostsAddSounds(
    view: View,
    position: Int,
    item: PostsaddsoundsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "POSTS_ADD_SOUNDS_FRAGMENT"

  }
}
