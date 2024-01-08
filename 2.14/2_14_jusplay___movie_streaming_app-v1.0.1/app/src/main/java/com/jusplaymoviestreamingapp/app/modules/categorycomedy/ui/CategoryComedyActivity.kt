package com.jusplaymoviestreamingapp.app.modules.categorycomedy.ui

import android.view.View
import androidx.activity.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityCategoryComedyBinding
import com.jusplaymoviestreamingapp.app.modules.categorycomedy.`data`.model.CategorycomedyRowModel
import com.jusplaymoviestreamingapp.app.modules.categorycomedy.`data`.viewmodel.CategoryComedyVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class CategoryComedyActivity :
    BaseActivity<ActivityCategoryComedyBinding>(R.layout.activity_category_comedy) {
  private val viewModel: CategoryComedyVM by viewModels<CategoryComedyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val categoryComedyAdapter =
    CategoryComedyAdapter(viewModel.categoryComedyList.value?:mutableListOf())
    binding.recyclerCategoryComedy.adapter = categoryComedyAdapter
    categoryComedyAdapter.setOnItemClickListener(
    object : CategoryComedyAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CategorycomedyRowModel) {
        onClickRecyclerCategoryComedy(view, position, item)
      }
    }
    )
    viewModel.categoryComedyList.observe(this) {
      categoryComedyAdapter.updateData(it)
    }
    binding.categoryComedyVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerCategoryComedy(
    view: View,
    position: Int,
    item: CategorycomedyRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "CATEGORY_COMEDY_ACTIVITY"

  }
}
