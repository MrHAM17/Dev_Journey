package com.jusplaymoviestreamingapp.app.modules.selectsaved.ui

import android.view.View
import androidx.activity.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivitySelectSavedBinding
import com.jusplaymoviestreamingapp.app.modules.selectsaved.`data`.model.SelectsavedRowModel
import com.jusplaymoviestreamingapp.app.modules.selectsaved.`data`.viewmodel.SelectSavedVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SelectSavedActivity : BaseActivity<ActivitySelectSavedBinding>(R.layout.activity_select_saved)
    {
  private val viewModel: SelectSavedVM by viewModels<SelectSavedVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val selectSavedAdapter =
    SelectSavedAdapter(viewModel.selectSavedList.value?:mutableListOf())
    binding.recyclerSelectSaved.adapter = selectSavedAdapter
    selectSavedAdapter.setOnItemClickListener(
    object : SelectSavedAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SelectsavedRowModel) {
        onClickRecyclerSelectSaved(view, position, item)
      }
    }
    )
    viewModel.selectSavedList.observe(this) {
      selectSavedAdapter.updateData(it)
    }
    binding.selectSavedVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSelectSaved(
    view: View,
    position: Int,
    item: SelectsavedRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SELECT_SAVED_ACTIVITY"

  }
}
