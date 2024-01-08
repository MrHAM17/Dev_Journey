package com.tikpikshortvideosocialnetworking.app.modules.comments.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.tikpikshortvideosocialnetworking.app.databinding.BottomsheetCommentsBinding
import com.tikpikshortvideosocialnetworking.app.modules.comments.`data`.model.CommentsRowModel
import com.tikpikshortvideosocialnetworking.app.modules.comments.`data`.viewmodel.CommentsVM
import com.tikpikshortvideosocialnetworking.app.modules.typecomments.ui.TypeCommentsBottomsheet
import kotlin.Int
import kotlin.String
import kotlin.Unit

class CommentsBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetCommentsBinding>(R.layout.bottomsheet_comments) {
  private val viewModel: CommentsVM by viewModels<CommentsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val commentsAdapter = CommentsAdapter(viewModel.commentsList.value?:mutableListOf())
    binding.recyclerComments.adapter = commentsAdapter
    commentsAdapter.setOnItemClickListener(
    object : CommentsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CommentsRowModel) {
        onClickRecyclerComments(view, position, item)
      }
    }
    )
    viewModel.commentsList.observe(requireActivity()) {
      commentsAdapter.updateData(it)
    }
    binding.commentsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.etComment.setOnClickListener {
      val destFragment = TypeCommentsBottomsheet.getInstance(null)
      destFragment.show(requireActivity().supportFragmentManager, TypeCommentsBottomsheet.TAG)
    }
  }

  fun onClickRecyclerComments(
    view: View,
    position: Int,
    item: CommentsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "COMMENTS_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): CommentsBottomsheet {
      val fragment = CommentsBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
