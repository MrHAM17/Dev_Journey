package com.housitbuyrentsellproperty.app.modules.toplocationslocationdetail.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityTopLocationsLocationDetailBinding
import com.housitbuyrentsellproperty.app.modules.toplocationslocationdetail.`data`.model.ToplocationslocationdetailRowModel
import com.housitbuyrentsellproperty.app.modules.toplocationslocationdetail.`data`.viewmodel.TopLocationsLocationDetailVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TopLocationsLocationDetailActivity :
    BaseActivity<ActivityTopLocationsLocationDetailBinding>(R.layout.activity_top_locations_location_detail)
    {
  private val viewModel: TopLocationsLocationDetailVM by viewModels<TopLocationsLocationDetailVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val topLocationsLocationDetailAdapter =
    TopLocationsLocationDetailAdapter(viewModel.topLocationsLocationDetailList.value?:mutableListOf())
    binding.recyclerTopLocationsLocationDetail.adapter = topLocationsLocationDetailAdapter
    topLocationsLocationDetailAdapter.setOnItemClickListener(
    object : TopLocationsLocationDetailAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      ToplocationslocationdetailRowModel) {
        onClickRecyclerTopLocationsLocationDetail(view, position, item)
      }
    }
    )
    viewModel.topLocationsLocationDetailList.observe(this) {
      topLocationsLocationDetailAdapter.updateData(it)
    }
    binding.topLocationsLocationDetailVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerTopLocationsLocationDetail(
    view: View,
    position: Int,
    item: ToplocationslocationdetailRowModel
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
      const val TAG: String = "TOP_LOCATIONS_LOCATION_DETAIL_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, TopLocationsLocationDetailActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
