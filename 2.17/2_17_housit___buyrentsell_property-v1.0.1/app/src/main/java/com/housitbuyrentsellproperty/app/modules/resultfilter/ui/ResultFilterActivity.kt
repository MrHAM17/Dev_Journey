package com.housitbuyrentsellproperty.app.modules.resultfilter.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityResultFilterBinding
import com.housitbuyrentsellproperty.app.modules.filterfull.ui.FilterFullBottomsheet
import com.housitbuyrentsellproperty.app.modules.resultfilter.`data`.model.Layout4RowModel
import com.housitbuyrentsellproperty.app.modules.resultfilter.`data`.viewmodel.ResultFilterVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ResultFilterActivity :
    BaseActivity<ActivityResultFilterBinding>(R.layout.activity_result_filter) {
  private val viewModel: ResultFilterVM by viewModels<ResultFilterVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val layoutAdapter = LayoutAdapter(viewModel.layoutList.value?:mutableListOf())
    binding.recyclerLayout.adapter = layoutAdapter
    layoutAdapter.setOnItemClickListener(
    object : LayoutAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Layout4RowModel) {
        onClickRecyclerLayout(view, position, item)
      }
    }
    )
    viewModel.layoutList.observe(this) {
      layoutAdapter.updateData(it)
    }
    binding.resultFilterVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnIconSetting.setOnClickListener {
      val destFragment = FilterFullBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, FilterFullBottomsheet.TAG)
    }
  }

  fun onClickRecyclerLayout(
    view: View,
    position: Int,
    item: Layout4RowModel
  ): Unit {
    when(view.id) {
    }
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    companion object {
      const val TAG: String = "RESULT_FILTER_ACTIVITY"

    }
  }
