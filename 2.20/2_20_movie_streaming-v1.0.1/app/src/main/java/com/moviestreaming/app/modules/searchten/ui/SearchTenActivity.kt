package com.moviestreaming.app.modules.searchten.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivitySearchTenBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.searchten.`data`.model.SearchtenRowModel
import com.moviestreaming.app.modules.searchten.`data`.viewmodel.SearchTenVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchTenActivity : BaseActivity<ActivitySearchTenBinding>(R.layout.activity_search_ten) {
  private val viewModel: SearchTenVM by viewModels<SearchTenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val searchTenAdapter = SearchTenAdapter(viewModel.searchTenList.value?:mutableListOf())
    binding.recyclerSearchTen.adapter = searchTenAdapter
    searchTenAdapter.setOnItemClickListener(
    object : SearchTenAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchtenRowModel) {
        onClickRecyclerSearchTen(view, position, item)
      }
    }
    )
    viewModel.searchTenList.observe(this) {
      searchTenAdapter.updateData(it)
    }
    binding.searchTenVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchTen(
    view: View,
    position: Int,
    item: SearchtenRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerSearchTenLinearMovieCard(view, position, item)
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

    fun onClickRecyclerSearchTenLinearMovieCard(
      view: View,
      position: Int,
      item: SearchtenRowModel
    ) {
      /** TODO As per your logic, Add constant type for item click.*/
      when(0) {
        0 ->  {
          val destIntent = DetailPageSevenActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        1 ->  {
          val destIntent = DetailPageSevenActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        2 ->  {
          val destIntent = DetailPageSevenActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }
    }

    companion object {
      const val TAG: String = "SEARCH_TEN_ACTIVITY"

    }
  }
