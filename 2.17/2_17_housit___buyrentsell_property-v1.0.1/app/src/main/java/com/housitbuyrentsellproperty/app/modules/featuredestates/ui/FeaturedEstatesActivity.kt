package com.housitbuyrentsellproperty.app.modules.featuredestates.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityFeaturedEstatesBinding
import com.housitbuyrentsellproperty.app.modules.featuredestates.`data`.model.FeaturedestatesRowModel
import com.housitbuyrentsellproperty.app.modules.featuredestates.`data`.viewmodel.FeaturedEstatesVM
import com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.ui.RealEstatesListByCategoryActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class FeaturedEstatesActivity :
    BaseActivity<ActivityFeaturedEstatesBinding>(R.layout.activity_featured_estates) {
  private val viewModel: FeaturedEstatesVM by viewModels<FeaturedEstatesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val featuredEstatesAdapter =
    FeaturedEstatesAdapter(viewModel.featuredEstatesList.value?:mutableListOf())
    binding.recyclerFeaturedEstates.adapter = featuredEstatesAdapter
    featuredEstatesAdapter.setOnItemClickListener(
    object : FeaturedEstatesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FeaturedestatesRowModel) {
        onClickRecyclerFeaturedEstates(view, position, item)
      }
    }
    )
    viewModel.featuredEstatesList.observe(this) {
      featuredEstatesAdapter.updateData(it)
    }
    binding.featuredEstatesVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerFeaturedEstates(
    view: View,
    position: Int,
    item: FeaturedestatesRowModel
  ): Unit {
    when(view.id) {
      R.id.linearEstatesCardVertical ->  {
        val destIntent = RealEstatesListByCategoryActivity.getIntent(this, null)
        startActivity(destIntent)
      }
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
      const val TAG: String = "FEATURED_ESTATES_ACTIVITY"

    }
  }
