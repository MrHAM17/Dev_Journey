package com.hiredjobsearch.app.modules.search.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivitySearchBinding
import com.hiredjobsearch.app.modules.jobdetailstabcontainer.ui.JobDetailsTabContainerActivity
import com.hiredjobsearch.app.modules.search.`data`.model.SearchRowModel
import com.hiredjobsearch.app.modules.search.`data`.viewmodel.SearchVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchActivity : BaseActivity<ActivitySearchBinding>(R.layout.activity_search) {
  private val viewModel: SearchVM by viewModels<SearchVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val searchAdapter = SearchAdapter(viewModel.searchList.value?:mutableListOf())
    binding.recyclerSearch.adapter = searchAdapter
    searchAdapter.setOnItemClickListener(
    object : SearchAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchRowModel) {
        onClickRecyclerSearch(view, position, item)
      }
    }
    )
    viewModel.searchList.observe(this) {
      searchAdapter.updateData(it)
    }
    binding.searchVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.imageImage.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSearch(
    view: View,
    position: Int,
    item: SearchRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSettings -> {
        onClickRecyclerSearchLinearSettings(view, position, item)
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

    fun onClickRecyclerSearchLinearSettings(
      view: View,
      position: Int,
      item: SearchRowModel
    ): Unit {
      /** TODO As per your logic, Add constant type for item click.*/
      when(0) {
        0 -> {
          val destIntent = JobDetailsTabContainerActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        1 -> {
          val destIntent = JobDetailsTabContainerActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        2 -> {
          val destIntent = JobDetailsTabContainerActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        3 -> {
          val destIntent = JobDetailsTabContainerActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }
    }

    companion object {
      const val TAG: String = "SEARCH_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, SearchActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
