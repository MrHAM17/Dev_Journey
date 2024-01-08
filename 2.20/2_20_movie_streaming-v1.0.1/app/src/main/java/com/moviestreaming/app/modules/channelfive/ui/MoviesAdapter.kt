package com.moviestreaming.app.modules.channelfive.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowMovies6Binding
import com.moviestreaming.app.modules.channelfive.`data`.model.Movies6RowModel
import kotlin.Int
import kotlin.collections.List

class MoviesAdapter(
  var list: List<Movies6RowModel>
) : RecyclerView.Adapter<MoviesAdapter.RowMovies6VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMovies6VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_movies6,parent,false)
    return RowMovies6VH(view)
  }

  override fun onBindViewHolder(holder: RowMovies6VH, position: Int) {
    val movies6RowModel = Movies6RowModel()
    // TODO uncomment following line after integration with data source
    // val movies6RowModel = list[position]
    holder.binding.movies6RowModel = movies6RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Movies6RowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: Movies6RowModel
    ) {
    }
  }

  inner class RowMovies6VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMovies6Binding = RowMovies6Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Movies6RowModel())
      }
    }
  }
}
