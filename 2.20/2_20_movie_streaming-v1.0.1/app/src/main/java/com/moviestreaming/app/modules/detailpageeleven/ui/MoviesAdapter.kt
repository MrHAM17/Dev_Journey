package com.moviestreaming.app.modules.detailpageeleven.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowMovies3Binding
import com.moviestreaming.app.modules.detailpageeleven.`data`.model.Movies3RowModel
import kotlin.Int
import kotlin.collections.List

class MoviesAdapter(
  var list: List<Movies3RowModel>
) : RecyclerView.Adapter<MoviesAdapter.RowMovies3VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMovies3VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_movies3,parent,false)
    return RowMovies3VH(view)
  }

  override fun onBindViewHolder(holder: RowMovies3VH, position: Int) {
    val movies3RowModel = Movies3RowModel()
    // TODO uncomment following line after integration with data source
    // val movies3RowModel = list[position]
    holder.binding.movies3RowModel = movies3RowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Movies3RowModel>) {
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
      item: Movies3RowModel
    ) {
    }
  }

  inner class RowMovies3VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMovies3Binding = RowMovies3Binding.bind(itemView)
    init {
      binding.linearMovieCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, Movies3RowModel())
      }
    }
  }
}
