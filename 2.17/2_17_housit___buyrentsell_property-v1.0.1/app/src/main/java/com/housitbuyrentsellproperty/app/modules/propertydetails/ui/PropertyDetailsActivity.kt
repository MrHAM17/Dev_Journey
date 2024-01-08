package com.housitbuyrentsellproperty.app.modules.propertydetails.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityPropertyDetailsBinding
import com.housitbuyrentsellproperty.app.modules.locationdistance.ui.LocationDistanceBottomsheet
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.Layout6RowModel
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.Layout7RowModel
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.PropertydetailsRowModel
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model.ViewallreviewsRowModel
import com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.viewmodel.PropertyDetailsVM
import com.housitbuyrentsellproperty.app.modules.view.ui.ViewActivity
import com.housitbuyrentsellproperty.app.modules.viewonmap.ui.ViewOnMapActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PropertyDetailsActivity :
    BaseActivity<ActivityPropertyDetailsBinding>(R.layout.activity_property_details) {
  private val viewModel: PropertyDetailsVM by viewModels<PropertyDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val layoutAdapter = LayoutAdapter(viewModel.layoutList.value?:mutableListOf())
    binding.recyclerLayout.adapter = layoutAdapter
    layoutAdapter.setOnItemClickListener(
    object : LayoutAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Layout6RowModel) {
        onClickRecyclerLayout(view, position, item)
      }
    }
    )
    viewModel.layoutList.observe(this) {
      layoutAdapter.updateData(it)
    }
    val layout1Adapter = Layout1Adapter(viewModel.layout1List.value?:mutableListOf())
    binding.recyclerLayout1.adapter = layout1Adapter
    layout1Adapter.setOnItemClickListener(
    object : Layout1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Layout7RowModel) {
        onClickRecyclerLayout1(view, position, item)
      }
    }
    )
    viewModel.layout1List.observe(this) {
      layout1Adapter.updateData(it)
    }
    val viewAllReviewsAdapter =
    ViewAllReviewsAdapter(viewModel.viewAllReviewsList.value?:mutableListOf())
    binding.recyclerViewAllReviews.adapter = viewAllReviewsAdapter
    viewAllReviewsAdapter.setOnItemClickListener(
    object : ViewAllReviewsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ViewallreviewsRowModel) {
        onClickRecyclerViewAllReviews(view, position, item)
      }
    }
    )
    viewModel.viewAllReviewsList.observe(this) {
      viewAllReviewsAdapter.updateData(it)
    }
    val propertyDetailsAdapter =
    PropertyDetailsAdapter(viewModel.propertyDetailsList.value?:mutableListOf())
    binding.recyclerPropertyDetails.adapter = propertyDetailsAdapter
    propertyDetailsAdapter.setOnItemClickListener(
    object : PropertyDetailsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PropertydetailsRowModel) {
        onClickRecyclerPropertyDetails(view, position, item)
      }
    }
    )
    viewModel.propertyDetailsList.observe(this) {
      propertyDetailsAdapter.updateData(it)
    }
    binding.propertyDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.spinnerLocation.setOnClickListener {
      val destFragment = LocationDistanceBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, LocationDistanceBottomsheet.TAG)
    }
    binding.btnSettings.setOnClickListener {
      val destIntent = ViewActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.mapMap.setOnClickListener {
      val destIntent = ViewOnMapActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerLayout(
    view: View,
    position: Int,
    item: Layout6RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerLayout1(
    view: View,
    position: Int,
    item: Layout7RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerViewAllReviews(
    view: View,
    position: Int,
    item: ViewallreviewsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerPropertyDetails(
    view: View,
    position: Int,
    item: PropertydetailsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PROPERTY_DETAILS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PropertyDetailsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
