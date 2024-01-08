package com.socialsocialnetworking.app.modules.comments.ui

import android.view.View
import androidx.activity.viewModels
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseActivity
import com.socialsocialnetworking.app.databinding.ActivityCommentsBinding
import com.socialsocialnetworking.app.modules.comments.`data`.model.CommentlistRowModel
import com.socialsocialnetworking.app.modules.comments.`data`.viewmodel.CommentsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class CommentsActivity : BaseActivity<ActivityCommentsBinding>(R.layout.activity_comments) {
  private val viewModel: CommentsVM by viewModels<CommentsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val commentListAdapter =
    CommentListAdapter(viewModel.commentListList.value?:mutableListOf())
    binding.recyclerCommentList.adapter = commentListAdapter
    commentListAdapter.setOnItemClickListener(
    object : CommentListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CommentlistRowModel) {
        onClickRecyclerCommentList(view, position, item)
      }
    }
    )
    viewModel.commentListList.observe(this) {
      commentListAdapter.updateData(it)
    }
    binding.commentsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerCommentList(
    view: View,
    position: Int,
    item: CommentlistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "COMMENTS_ACTIVITY"

  }
}
