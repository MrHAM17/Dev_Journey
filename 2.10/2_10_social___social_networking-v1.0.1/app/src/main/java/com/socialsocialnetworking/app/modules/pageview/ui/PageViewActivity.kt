package com.socialsocialnetworking.app.modules.pageview.ui

import android.view.View
import androidx.activity.viewModels
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseActivity
import com.socialsocialnetworking.app.databinding.ActivityPageViewBinding
import com.socialsocialnetworking.app.modules.pageview.`data`.model.ConversionsRowModel
import com.socialsocialnetworking.app.modules.pageview.`data`.viewmodel.PageViewVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PageViewActivity : BaseActivity<ActivityPageViewBinding>(R.layout.activity_page_view) {
  private val viewModel: PageViewVM by viewModels<PageViewVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val conversionsAdapter =
    ConversionsAdapter(viewModel.conversionsList.value?:mutableListOf())
    binding.recyclerConversions.adapter = conversionsAdapter
    conversionsAdapter.setOnItemClickListener(
    object : ConversionsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ConversionsRowModel) {
        onClickRecyclerConversions(view, position, item)
      }
    }
    )
    viewModel.conversionsList.observe(this) {
      conversionsAdapter.updateData(it)
    }
    binding.pageViewVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowBack.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerConversions(
    view: View,
    position: Int,
    item: ConversionsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PAGE_VIEW_ACTIVITY"

  }
}
