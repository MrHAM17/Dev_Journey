package com.safebankmobilebankingapp.app.modules.countryorregion.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivityCountryOrRegionBinding
import com.safebankmobilebankingapp.app.modules.countryorregion.`data`.model.CountryorregionRowModel
import com.safebankmobilebankingapp.app.modules.countryorregion.`data`.viewmodel.CountryOrRegionVM
import com.safebankmobilebankingapp.app.modules.minepagecontainer.ui.MinePageContainerActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class CountryOrRegionActivity :
    BaseActivity<ActivityCountryOrRegionBinding>(R.layout.activity_country_or_region) {
  private val viewModel: CountryOrRegionVM by viewModels<CountryOrRegionVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val countryOrRegionAdapter =
    CountryOrRegionAdapter(viewModel.countryOrRegionList.value?:mutableListOf())
    binding.recyclerCountryOrRegion.adapter = countryOrRegionAdapter
    countryOrRegionAdapter.setOnItemClickListener(
    object : CountryOrRegionAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CountryorregionRowModel) {
        onClickRecyclerCountryOrRegion(view, position, item)
      }
    }
    )
    viewModel.countryOrRegionList.observe(this) {
      countryOrRegionAdapter.updateData(it)
    }
    binding.countryOrRegionVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerCountryOrRegion(
    view: View,
    position: Int,
    item: CountryorregionRowModel
  ): Unit {
    when(view.id) {
      R.id.linearCountrySelection ->  {
        val destIntent = MinePageContainerActivity.getIntent(this, null)
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
      const val TAG: String = "COUNTRY_OR_REGION_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, CountryOrRegionActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
