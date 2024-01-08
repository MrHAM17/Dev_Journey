package com.moviestreaming.app.modules.detailpagetwelve.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowMovies4Binding
import com.moviestreaming.app.modules.detailpagetwelve.`data`.model.Movies4RowModel
import kotlin.Int
import kotlin.collections.List

class MoviesAdapter(
  var list: List<Movies4RowModel>
) : RecyclerView.Adapter<MoviesAdapter.RowMovies4VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMovies4VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_movies4,parent,false)
    return RowMovies4VH(view)
  }

  override fun onBindViewHolder(holder: RowMovies4VH, position: Int) {
    val movies4RowModel = Movies4RowModel()
    // TODO uncomment following line after integration with data source
    // val movies4RowModel = list[position]
    holder.binding.movies4RowModel = movies4RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Movies4RowModel>) {
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
      item: Movies4RowModel
    ) {
    }
  }

  inner class RowMovies4VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMovies4Binding = RowMovies4Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Movies4RowModel())
      }
    }
  }
}
