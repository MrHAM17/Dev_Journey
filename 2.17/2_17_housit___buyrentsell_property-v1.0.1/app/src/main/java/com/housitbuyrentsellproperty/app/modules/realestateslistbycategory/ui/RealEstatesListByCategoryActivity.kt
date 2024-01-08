package com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityRealEstatesListByCategoryBinding
import com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.`data`.model.DatalistRowModel
import com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.`data`.model.RealestateslistbycategoryRowModel
import com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.`data`.viewmodel.RealEstatesListByCategoryVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class RealEstatesListByCategoryActivity :
    BaseActivity<ActivityRealEstatesListByCategoryBinding>(R.layout.activity_real_estates_list_by_category)
    {
  private val viewModel: RealEstatesListByCategoryVM by viewModels<RealEstatesListByCategoryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val dataListAdapter = DataListAdapter(viewModel.dataListList.value?:mutableListOf())
    binding.recyclerDataList.adapter = dataListAdapter
    dataListAdapter.setOnItemClickListener(
    object : DataListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : DatalistRowModel) {
        onClickRecyclerDataList(view, position, item)
      }
    }
    )
    viewModel.dataListList.observe(this) {
      dataListAdapter.updateData(it)
    }
    val realEstatesListbyCategoryAdapter =
    RealEstatesListbyCategoryAdapter(viewModel.realEstatesListbyCategoryList.value?:mutableListOf())
    binding.recyclerRealEstatesListbyCategory.adapter = realEstatesListbyCategoryAdapter
    realEstatesListbyCategoryAdapter.setOnItemClickListener(
    object : RealEstatesListbyCategoryAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      RealestateslistbycategoryRowModel) {
        onClickRecyclerRealEstatesListbyCategory(view, position, item)
      }
    }
    )
    viewModel.realEstatesListbyCategoryList.observe(this) {
      realEstatesListbyCategoryAdapter.updateData(it)
    }
    binding.realEstatesListByCategoryVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerDataList(
    view: View,
    position: Int,
    item: DatalistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerRealEstatesListbyCategory(
    view: View,
    position: Int,
    item: RealestateslistbycategoryRowModel
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
      const val TAG: String = "REAL_ESTATES_LIST_BY_CATEGORY_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, RealEstatesListByCategoryActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
