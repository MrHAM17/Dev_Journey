package com.tikpikshortvideosocialnetworking.app.modules.postsaddeffects.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentPostsAddEffectsBinding
import com.tikpikshortvideosocialnetworking.app.modules.postsaddeffects.`data`.model.PostsaddeffectsRowModel
import com.tikpikshortvideosocialnetworking.app.modules.postsaddeffects.`data`.viewmodel.PostsAddEffectsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PostsAddEffectsFragment :
    BaseFragment<FragmentPostsAddEffectsBinding>(R.layout.fragment_posts_add_effects) {
  private val viewModel: PostsAddEffectsVM by viewModels<PostsAddEffectsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val postsAddEffectsAdapter =
    PostsAddEffectsAdapter(viewModel.postsAddEffectsList.value?:mutableListOf())
    binding.recyclerPostsAddEffects.adapter = postsAddEffectsAdapter
    postsAddEffectsAdapter.setOnItemClickListener(
    object : PostsAddEffectsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PostsaddeffectsRowModel) {
        onClickRecyclerPostsAddEffects(view, position, item)
      }
    }
    )
    viewModel.postsAddEffectsList.observe(requireActivity()) {
      postsAddEffectsAdapter.updateData(it)
    }
    binding.postsAddEffectsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerPostsAddEffects(
    view: View,
    position: Int,
    item: PostsaddeffectsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "POSTS_ADD_EFFECTS_FRAGMENT"

  }
}
