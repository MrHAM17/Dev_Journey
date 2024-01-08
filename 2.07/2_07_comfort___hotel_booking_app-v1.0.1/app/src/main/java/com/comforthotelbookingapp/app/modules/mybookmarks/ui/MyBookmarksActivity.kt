package com.comforthotelbookingapp.app.modules.mybookmarks.ui

import android.view.View
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityMyBookmarksBinding
import com.comforthotelbookingapp.app.modules.mybookmarks.`data`.model.MybookmarksRowModel
import com.comforthotelbookingapp.app.modules.mybookmarks.`data`.viewmodel.MyBookmarksVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MyBookmarksActivity : BaseActivity<ActivityMyBookmarksBinding>(R.layout.activity_my_bookmarks)
    {
  private val viewModel: MyBookmarksVM by viewModels<MyBookmarksVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val myBookmarksAdapter =
    MyBookmarksAdapter(viewModel.myBookmarksList.value?:mutableListOf())
    binding.recyclerMyBookmarks.adapter = myBookmarksAdapter
    myBookmarksAdapter.setOnItemClickListener(
    object : MyBookmarksAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : MybookmarksRowModel) {
        onClickRecyclerMyBookmarks(view, position, item)
      }
    }
    )
    viewModel.myBookmarksList.observe(this) {
      myBookmarksAdapter.updateData(it)
    }
    binding.myBookmarksVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerMyBookmarks(
    view: View,
    position: Int,
    item: MybookmarksRowModel
  ): Unit {
    when(view.id) {
      R.id.imageImage ->  {
        // TODO please, add your navigation code here
      }
    }
  }

  companion object {
    const val TAG: String = "MY_BOOKMARKS_ACTIVITY"

  }
}
