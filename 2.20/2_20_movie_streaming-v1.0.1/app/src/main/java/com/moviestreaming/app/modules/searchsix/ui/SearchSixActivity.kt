package com.moviestreaming.app.modules.searchsix.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivitySearchSixBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.searchsix.`data`.model.Movies7RowModel
import com.moviestreaming.app.modules.searchsix.`data`.model.Movies8RowModel
import com.moviestreaming.app.modules.searchsix.`data`.model.Movies9RowModel
import com.moviestreaming.app.modules.searchsix.`data`.viewmodel.SearchSixVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchSixActivity : BaseActivity<ActivitySearchSixBinding>(R.layout.activity_search_six) {
  private val viewModel: SearchSixVM by viewModels<SearchSixVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val moviesAdapter = MoviesAdapter(viewModel.moviesList.value?:mutableListOf())
    binding.recyclerMovies.adapter = moviesAdapter
    moviesAdapter.setOnItemClickListener(
    object : MoviesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Movies7RowModel) {
        onClickRecyclerMovies(view, position, item)
      }
    }
    )
    viewModel.moviesList.observe(this) {
      moviesAdapter.updateData(it)
    }
    val movies1Adapter = Movies1Adapter(viewModel.movies1List.value?:mutableListOf())
    binding.recyclerMovies1.adapter = movies1Adapter
    movies1Adapter.setOnItemClickListener(
    object : Movies1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Movies8RowModel) {
        onClickRecyclerMovies1(view, position, item)
      }
    }
    )
    viewModel.movies1List.observe(this) {
      movies1Adapter.updateData(it)
    }
    val movies2Adapter = Movies2Adapter(viewModel.movies2List.value?:mutableListOf())
    binding.recyclerMovies2.adapter = movies2Adapter
    movies2Adapter.setOnItemClickListener(
    object : Movies2Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Movies9RowModel) {
        onClickRecyclerMovies2(view, position, item)
      }
    }
    )
    viewModel.movies2List.observe(this) {
      movies2Adapter.updateData(it)
    }
    binding.searchSixVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerMovies(
    view: View,
    position: Int,
    item: Movies7RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerMoviesLinearMovieCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerMovies1(
    view: View,
    position: Int,
    item: Movies8RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerMovies1LinearMovieCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerMovies2(
    view: View,
    position: Int,
    item: Movies9RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerMovies2LinearMovieCard(view, position, item)
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

    fun onClickRecyclerMoviesLinearMovieCard(
      view: View,
      position: Int,
      item: Movies7RowModel
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
      }
    }

    fun onClickRecyclerMovies1LinearMovieCard(
      view: View,
      position: Int,
      item: Movies8RowModel
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
      }
    }

    fun onClickRecyclerMovies2LinearMovieCard(
      view: View,
      position: Int,
      item: Movies9RowModel
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
      }
    }

    companion object {
      const val TAG: String = "SEARCH_SIX_ACTIVITY"

    }
  }
