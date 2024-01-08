package com.moviestreaming.app.modules.searchsix.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowMovies7Binding
import com.moviestreaming.app.modules.searchsix.`data`.model.Movies7RowModel
import kotlin.Int
import kotlin.collections.List

class MoviesAdapter(
  var list: List<Movies7RowModel>
) : RecyclerView.Adapter<MoviesAdapter.RowMovies7VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMovies7VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_movies7,parent,false)
    return RowMovies7VH(view)
  }

  override fun onBindViewHolder(holder: RowMovies7VH, position: Int) {
    val movies7RowModel = Movies7RowModel()
    // TODO uncomment following line after integration with data source
    // val movies7RowModel = list[position]
    holder.binding.movies7RowModel = movies7RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Movies7RowModel>) {
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
      item: Movies7RowModel
    ) {
    }
  }

  inner class RowMovies7VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMovies7Binding = RowMovies7Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Movies7RowModel())
      }
    }
  }
}
