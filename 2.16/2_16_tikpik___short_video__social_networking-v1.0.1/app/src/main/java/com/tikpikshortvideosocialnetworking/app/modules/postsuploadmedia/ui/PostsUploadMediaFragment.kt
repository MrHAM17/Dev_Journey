package com.tikpikshortvideosocialnetworking.app.modules.postsuploadmedia.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentPostsUploadMediaBinding
import com.tikpikshortvideosocialnetworking.app.modules.postsuploadmedia.`data`.model.Autolayoutvertical6RowModel
import com.tikpikshortvideosocialnetworking.app.modules.postsuploadmedia.`data`.viewmodel.PostsUploadMediaVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PostsUploadMediaFragment :
    BaseFragment<FragmentPostsUploadMediaBinding>(R.layout.fragment_posts_upload_media) {
  private val viewModel: PostsUploadMediaVM by viewModels<PostsUploadMediaVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val autoLayoutVerticalAdapter =
    AutoLayoutVerticalAdapter(viewModel.autoLayoutVerticalList.value?:mutableListOf())
    binding.recyclerAutoLayoutVertical.adapter = autoLayoutVerticalAdapter
    autoLayoutVerticalAdapter.setOnItemClickListener(
    object : AutoLayoutVerticalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Autolayoutvertical6RowModel) {
        onClickRecyclerAutoLayoutVertical(view, position, item)
      }
    }
    )
    viewModel.autoLayoutVerticalList.observe(requireActivity()) {
      autoLayoutVerticalAdapter.updateData(it)
    }
    binding.postsUploadMediaVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerAutoLayoutVertical(
    view: View,
    position: Int,
    item: Autolayoutvertical6RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "POSTS_UPLOAD_MEDIA_FRAGMENT"

  }
}
