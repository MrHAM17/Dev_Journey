package com.moviestreaming.app.modules.searchseven.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivitySearchSevenBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.searchseven.`data`.model.SearchsevenRowModel
import com.moviestreaming.app.modules.searchseven.`data`.viewmodel.SearchSevenVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchSevenActivity : BaseActivity<ActivitySearchSevenBinding>(R.layout.activity_search_seven)
    {
  private val viewModel: SearchSevenVM by viewModels<SearchSevenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val searchSevenAdapter =
    SearchSevenAdapter(viewModel.searchSevenList.value?:mutableListOf())
    binding.recyclerSearchSeven.adapter = searchSevenAdapter
    searchSevenAdapter.setOnItemClickListener(
    object : SearchSevenAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchsevenRowModel) {
        onClickRecyclerSearchSeven(view, position, item)
      }
    }
    )
    viewModel.searchSevenList.observe(this) {
      searchSevenAdapter.updateData(it)
    }
    binding.searchSevenVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchSeven(
    view: View,
    position: Int,
    item: SearchsevenRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerSearchSevenLinearMovieCard(view, position, item)
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

    fun onClickRecyclerSearchSevenLinearMovieCard(
      view: View,
      position: Int,
      item: SearchsevenRowModel
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
      const val TAG: String = "SEARCH_SEVEN_ACTIVITY"

    }
  }
