package com.moviestreaming.app.modules.searchnine.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivitySearchNineBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.searchnine.`data`.model.SearchnineRowModel
import com.moviestreaming.app.modules.searchnine.`data`.viewmodel.SearchNineVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchNineActivity : BaseActivity<ActivitySearchNineBinding>(R.layout.activity_search_nine) {
  private val viewModel: SearchNineVM by viewModels<SearchNineVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val searchNineAdapter = SearchNineAdapter(viewModel.searchNineList.value?:mutableListOf())
    binding.recyclerSearchNine.adapter = searchNineAdapter
    searchNineAdapter.setOnItemClickListener(
    object : SearchNineAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchnineRowModel) {
        onClickRecyclerSearchNine(view, position, item)
      }
    }
    )
    viewModel.searchNineList.observe(this) {
      searchNineAdapter.updateData(it)
    }
    binding.searchNineVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchNine(
    view: View,
    position: Int,
    item: SearchnineRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerSearchNineLinearMovieCard(view, position, item)
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

    fun onClickRecyclerSearchNineLinearMovieCard(
      view: View,
      position: Int,
      item: SearchnineRowModel
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
        3 ->  {
          val destIntent = DetailPageSevenActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }
    }

    companion object {
      const val TAG: String = "SEARCH_NINE_ACTIVITY"

    }
  }
